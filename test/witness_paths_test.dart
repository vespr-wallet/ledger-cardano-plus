import 'package:flutter_test/flutter_test.dart';
// Only the public library: gatherWitnessPaths must be usable without a src/ import.
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

final _payment0 = LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment);
final _payment1 = LedgerSigningPath.shelley(account: 0, address: 1, role: ShelleyAddressRole.payment);
final _stakeKey = LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.stake);

ParsedInput _input(int index, LedgerSigningPath? path) =>
    ParsedInput(txHashHex: '00' * 32, outputIndex: index, path: path);

ParsedTransaction _tx({required List<ParsedInput> inputs, List<ParsedInput>? collateralInputs}) => ParsedTransaction(
  network: CardanoNetwork.mainnet(),
  inputs: inputs,
  outputs: [],
  fee: BigInt.zero,
  collateralInputs: collateralInputs,
);

void main() {
  test('gathers input, collateral and additional paths without duplicates', () {
    final request = ParsedSigningRequest(
      tx: _tx(
        inputs: [_input(0, _payment0), _input(1, _payment0), _input(2, null)],
        collateralInputs: [_input(3, _payment1)],
      ),
      signingMode: TransactionSigningModes.ordinaryTransaction,
      additionalWitnessPaths: [_stakeKey, LedgerSigningPath.custom(_payment1.signingPath)],
    );

    expect(gatherWitnessPaths(request), [_payment0, _payment1, _stakeKey]);
  });

  test('a multisig transaction only uses the additional witness paths', () {
    final request = ParsedSigningRequest(
      tx: _tx(inputs: [_input(0, _payment0)]),
      signingMode: TransactionSigningModes.multisigTransaction,
      additionalWitnessPaths: [_stakeKey],
    );

    expect(gatherWitnessPaths(request), [_stakeKey]);
  });
}
