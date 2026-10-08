import 'package:flutter_test/flutter_test.dart';
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';
import 'package:ledger_cardano_plus/src/models/flags.dart';
import 'package:ledger_cardano_plus/src/operations/ledger_operations.dart';
import 'package:ledger_cardano_plus/src/utils/serialization_utils.dart' show uniquify;
import 'package:ledger_cardano_plus/src/utils/utilities.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus_dart.dart';

final _stakeKey = LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.stake);
final _multisigKey = LedgerSigningPath.custom([harden + 1854, harden + 1815, harden, 0, 0]);
final _hash = '00' * 28;

ParsedTransaction _tx({
  LedgerSigningPath? inputPath,
  List<ParsedCertificate>? certificates,
  List<ParsedInput>? collateralInputs,
}) => ParsedTransaction(
  network: CardanoNetwork.mainnet(),
  inputs: [ParsedInput(txHashHex: '00' * 32, outputIndex: 0, path: inputPath)],
  outputs: [],
  fee: BigInt.zero,
  certificates: certificates,
  collateralInputs: collateralInputs,
);

TransactionSigningModes _infer(ParsedTransaction tx, [List<LedgerSigningPath> witnessPaths = const []]) =>
    ParsedSigningRequest.withInferredSigningMode(tx: tx, additionalWitnessPaths: witnessPaths).signingMode;

ParsedCertificate _poolRegistration(ParsedPoolKey poolKey, ParsedPoolOwner owner) =>
    ParsedCertificate.stakePoolRegistration(
      pool: ParsedPoolParams(
        poolKey: poolKey,
        vrfHashHex: '00' * 32,
        pledge: BigInt.zero,
        cost: BigInt.zero,
        margin: ParsedMargin(numerator: BigInt.zero, denominator: BigInt.one),
        rewardAccount: ParsedPoolRewardAccount.thirdParty(rewardAccountHex: 'e1$_hash'),
        owners: [owner],
        relays: [],
        metadata: null,
      ),
    );

VersionCompatibility _compat(int major, int minor, {bool isAppXS = false}) =>
    VersionCompatibility.checkVersionCompatibility(
      CardanoVersion(
        testMode: false,
        versionMajor: major,
        versionMinor: minor,
        versionPatch: 0,
        locked: false,
        flags: Flags(isDebug: false, isAppXS: isAppXS),
      ),
    );

void main() {
  test('infers the signing mode like the JS SDK', () {
    expect(_infer(_tx(inputPath: _stakeKey)), TransactionSigningModes.ordinaryTransaction);
    expect(_infer(_tx(), [_stakeKey]), TransactionSigningModes.ordinaryTransaction);
    expect(
      _infer(
        _tx(
          certificates: [
            ParsedCertificate.stakeRegistration(stakeCredential: ParsedCredential.scriptHash(scriptHashHex: _hash)),
          ],
        ),
      ),
      TransactionSigningModes.multisigTransaction,
    );
    expect(
      _infer(_tx(collateralInputs: [ParsedInput(txHashHex: '00' * 32, outputIndex: 1, path: null)])),
      TransactionSigningModes.plutusTransaction,
    );
    expect(
      _infer(
        _tx(
          certificates: [
            _poolRegistration(ParsedPoolKey.thirdParty(hashHex: _hash), ParsedPoolOwner.deviceOwned(path: _stakeKey)),
          ],
        ),
      ),
      TransactionSigningModes.poolRegistrationAsOwner,
    );
    expect(
      _infer(
        _tx(
          certificates: [
            _poolRegistration(
              ParsedPoolKey.deviceOwned(path: LedgerSigningPath.poolCold(account: 0, index: 0)),
              ParsedPoolOwner.thirdParty(hashHex: _hash),
            ),
          ],
        ),
      ),
      TransactionSigningModes.poolRegistrationAsOperator,
    );

    final ambiguous = throwsA(isA<LedgerCardanoValidationException>());
    expect(() => _infer(_tx()), ambiguous);
    expect(() => _infer(_tx(inputPath: _stakeKey), [_multisigKey]), ambiguous);
  });

  test('parses IPs including compressed IPv6', () {
    expect(ipStringToBytes('1.2.3.4'), [1, 2, 3, 4]);
    expect(ipStringToBytes('2001:db8::1'), [0x20, 0x01, 0x0d, 0xb8, ...List.filled(11, 0), 1]);
    expect(ipStringToBytes('::ffff:1.2.3.4'), [...List.filled(10, 0), 0xff, 0xff, 1, 2, 3, 4]);
    expect(() => ipStringToBytes('1.2.3'), throwsA(isA<LedgerCardanoValidationException>()));
  });

  test('dedupes witness paths by the raw path', () {
    expect(uniquify([_stakeKey, LedgerSigningPath.custom(_stakeKey.signingPath)]), [_stakeKey]);
  });

  test('version compatibility has no v8 cap and Nano S limits only v7', () {
    final v9 = _compat(9, 0);
    expect([v9.isCompatible, v9.supportsUnrestrictedTransaction, v9.supportsMultipleVoters], everyElement(isTrue));
    final v7 = _compat(7, 1);
    expect([v7.supportsMultipleVoters, v7.supportsMultipleVotesPerVoter], everyElement(isFalse));
    expect(_compat(7, 1, isAppXS: true).supportsPoolRegistrationAsOperator, isFalse);
    expect(_compat(8, 0, isAppXS: true).supportsPoolRegistrationAsOperator, isTrue);
  });

  group('device operations', () {
    final sentP1s = <int>[];

    // Fake device: answers APDUs in order, throwing the exception entries
    LedgerSendFct device(List<Object> answers) {
      sentP1s.clear();
      Future<Y> send<Y>(LedgerRawOperation<Y> apdu) async {
        sentP1s.add((apdu as LedgerSimpleOperation).p1);
        final answer = answers.removeAt(0);
        if (answer is StillInCallException) throw answer;
        return apdu.read(ByteDataReader()..add(answer as List<int>));
      }

      return send;
    }

    test('retries a still-in-call first APDU once and reads the version flags', () async {
      final version =
          await const RetryStillInCallOperation(
            CardanoVersionOperation(),
          ).invoke(
            device([
              StillInCallException(),
              [7, 1, 0, 0x05],
            ]),
          );
      expect(sentP1s, hasLength(2));
      expect([version.versionMajor, version.flags.isDebug, version.flags.isAppXS], [7, true, true]);
    });

    test('shows the address with a second APDU, which is never retried', () async {
      final derive = RetryStillInCallOperation(
        CardanoDeriveAddressOperation(
          params: ParsedAddressParams.shelley(
            shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
              spendingDataSource: SpendingDataSourcePath(
                path: LedgerSigningPath.shelley(account: 0, address: 0, role: ShelleyAddressRole.payment),
              ),
              stakingDataSource: StakingDataSource.keyPath(path: _stakeKey),
            ),
          ),
          network: CardanoNetwork.mainnet(),
          display: true,
        ),
      );

      expect(
        await derive.invoke(
          device([
            [0xab],
            <int>[],
          ]),
        ),
        'ab',
      );
      expect(sentP1s, [p1ReturnDataToHost, p1DisplayOnDevice]);

      await expectLater(
        derive.invoke(
          device([
            [0xab],
            StillInCallException(),
          ]),
        ),
        throwsA(isA<StillInCallException>()),
      );
      expect(sentP1s, [p1ReturnDataToHost, p1DisplayOnDevice]);
    });
  });
}
