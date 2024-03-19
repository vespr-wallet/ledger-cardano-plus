import 'dart:math';
import 'dart:typed_data';

import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_cardano/src/models/parsed_transaction.dart';
import 'package:ledger_cardano/src/models/parsed_transaction_options.dart';
import 'package:ledger_cardano/src/models/transaction_signing_mode.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/utils/serialization_utils.dart';

class CardanoSignTransactionOperation extends ComplexLedgerOperation<Uint8List> {
  final ParsedTransaction transaction;
  final TransactionSigningMode signingMode;
  final List<List<int>> witnessPaths;
  final ParsedTransactionOptions options;
  final CardanoVersion cardanoVersion;

  const CardanoSignTransactionOperation({
    required this.transaction,
    required this.signingMode,
    required this.witnessPaths,
    required this.options,
    required this.cardanoVersion,
  });

  @override
  Future<Uint8List> invoke(LedgerSendFct send) async {
    await signTx_init(send);
    await signTx_addInputs(send);

    final signature = await signTx_finish(send);

    return signature;
  }

  Future<void> signTx_init(LedgerSendFct send) async {
    final data = SerializationUtils.serializeTxInit(
      transaction,
      signingMode,
      witnessPaths.length,
      options,
      cardanoVersion
    );

    await send(
      SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageInit,
        p2: p2Unused,
        data: data,
        prependDataLength: true,
      ),
    );
  }

  Future<void> signTx_addInputs(LedgerSendFct send) async {
    for (final input in transaction.inputs) {
      final data = SerializationUtils.serializeTxInput(input);

      await send(
        SendOperation(
          ins: InstructionType.signTransaction.insValue,
          p1: p1StageInputs,
          p2: p2Unused,
          data: data,
          prependDataLength: true,
        ),
      );
    }
  }
  
  Future<void> signTx_addOutput_sendChunks(String hexString, int p2, LedgerSendFct send) async {
  var start = maxChunkSize * 2;

  while (start < hexString.length) {
    final end = min(hexString.length, start + maxChunkSize * 2);
    final chunk = hexString.substring(start, end);

    await send(
      SendOperation(
        ins: InstructionType.signTransaction.insValue,
        p1: p1StageOutputs,
        p2: p2,
        data: Uint8List.fromList([
          ...Uint32List.fromList([chunk.length ~/ 2]).buffer.asUint8List(),
          ...hex.decode(chunk),
        ]),
        prependDataLength: true,
      ),
    );
    start = end;
  }
}
}