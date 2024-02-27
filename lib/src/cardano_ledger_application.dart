import 'dart:typed_data';

import 'package:ledger_cardano/src/cardano_transformer.dart';
import 'package:ledger_cardano/src/cardano_version.dart';
import 'package:ledger_cardano/src/operations/cardano_derive_address_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_sign_msgpack_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_public_key_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_version_operation.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

/// A [LedgerApp] used to perform BLE operations on a ledger [Cardano]
/// application.
///
/// https://github.com/cardano-foundation/ledger-app-cardano/blob/master/doc/design_doc.md
class CardanoLedgerApp extends LedgerApp {
  static const harden = 0x80000000;

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
    // derivation path for shelley accounts
    final List<int> bip32PaymentPath = [
      harden + 1852,
      harden + 1815,
      harden + accountIndex,
      0,
      0,
    ];

    final List<int> bip32StakePath = [
      harden + 1852,
      harden + 1815,
      harden + accountIndex,
      2,
      0,
    ];

    final paymentPart = await ledger.sendOperation<List<String>>(
      device,
      CardanoGetPublicKeyOperation(bip32Path: bip32PaymentPath),
      transformer: transformer,
    );

    final stakePart = await ledger.sendOperation<List<String>>(
      device,
      CardanoGetPublicKeyOperation(bip32Path: bip32StakePath),
      transformer: transformer,
    );

    return [...paymentPart,...stakePart];
  }

 Future<List<String>> deriveAddress(LedgerDevice device, {bool displayOnDevice = false}) async {
  // Derivation path for shelley accounts
  final List<int> bip32PaymentPath = [
    harden + 1852,
    harden + 1815,
    harden + accountIndex,
    0,
    0,
  ];

  final List<int> bip32StakePath = [
    harden + 1852,
    harden + 1815,
    harden + accountIndex,
    2,
    0,
  ];

  // Determine P1 based on whether the address should be displayed on the device
  final int p1 = displayOnDevice ? 0x02 : 0x01;

  // Assuming you need to handle both paths, call the operation for each path separately
  final paymentAddressResult = await ledger.sendOperation<List<String>>(
    device,
    CardanoDeriveAddressOperation(
      bip32Path: bip32PaymentPath, // Correctly pass the bip32Path parameter
      p1: p1,
    ),
    transformer: transformer,
  );

  final stakeAddressResult = await ledger.sendOperation<List<String>>(
    device,
    CardanoDeriveAddressOperation(
      bip32Path: bip32StakePath, // Correctly pass the bip32Path parameter
      p1: p1,
    ),
    transformer: transformer,
  );

  // Combine or handle the results as needed
  return [...paymentAddressResult, ...stakeAddressResult];
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
