import 'dart:typed_data';

import 'package:ledger_cardano/src/cardano_transformer.dart';
import 'package:ledger_cardano/src/cardano_version.dart';
import 'package:ledger_cardano/src/operations/cardano_sign_msgpack_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_public_key_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_version_operation.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

/// A [LedgerApp] used to perform BLE operations on a ledger [Cardano]
/// application.
///
/// https://github.com/cardano-foundation/ledger-app-cardano/blob/master/doc/design_doc.md
class CardanoLedgerApp extends LedgerApp {
  static const success = 0x9000;
  static const errMalformedRequestHeader = 0x6E01;
  static const errBadCla = 0x6E02;
  static const errUnknownIns = 0x6E03;
  static const errStillInCall = 0x6E04;
  static const errInvalidRequestParameters = 0x6E05;
  static const errInvalidState = 0x6E06;
  static const errInvalidData = 0x6E07;
  static const errInvalidBip44Path = 0x6E08;
  static const errRejectedByUser = 0x6E09;
  static const errRejectedByPolicy = 0x6E10;
  static const errDeviceLocked = 0x6E11;

  int accountIndex;
  LedgerTransformer? transformer;

  CardanoLedgerApp(
    super.ledger, {
    this.accountIndex = 0,
    this.transformer = const CardanoTransformer(),
  });

  @override
  Future<CardanoVersion> getVersion(LedgerDevice device) {
    return ledger.sendOperation<CardanoVersion>(
      device,
      CardanoVersionOperation(),
      transformer: transformer,
    );
  }

    @override
  Future<List<String>> getAccounts(LedgerDevice device) async {
   
    final List<int> bip32Path = [
      0x8000002C, 
      0x80000717, 
      0x80000000 + accountIndex, 
    ];

    return ledger.sendOperation<List<String>>(
      device,
      CardanoGetPublicKeyOperation(bip32Path: bip32Path),
      transformer: transformer,
    );
  }

  @override
  Future<Uint8List> signTransaction(
    LedgerDevice device,
    Uint8List transaction,
  ) {
    return ledger.sendOperation<Uint8List>(
      device,
      CardanoSignMsgPackOperation(
        accountIndex: accountIndex,
        transaction: transaction,
      ),
      transformer: transformer,
    );
  }

  @override
  Future<List<Uint8List>> signTransactions(
    LedgerDevice device,
    List<Uint8List> transactions,
  ) async {
    final signatures = <Uint8List>[];
    for (var tx in transactions) {
      final signature = await signTransaction(device, tx);
      signatures.add(signature);
    }

    return signatures;
  }
}
