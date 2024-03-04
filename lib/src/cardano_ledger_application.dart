import 'dart:typed_data';

import 'package:ledger_cardano/src/cardano_transformer.dart';
import 'package:ledger_cardano/src/cardano_version.dart';
import 'package:ledger_cardano/src/models/extended_public_key.dart';
import 'package:ledger_cardano/src/operations/cardano_derive_address_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_get_serial_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_sign_msgpack_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_public_key_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_version_operation.dart';
import 'package:ledger_cardano/src/utils/cardano_networks.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

/// A [LedgerApp] used to perform BLE operations on a ledger [Cardano]
/// application.
///
/// https://github.com/cardano-foundation/ledger-app-cardano/blob/master/doc/design_doc.md
/// https://github.com/cardano-foundation/ledgerjs-hw-app-cardano
class CardanoLedgerApp {
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

  final Ledger ledger;
  final int accountIndex;
  final LedgerTransformer? transformer;

  const CardanoLedgerApp(
    this.ledger, {
    this.accountIndex = 0,
    this.transformer = const CardanoTransformer(),
  });

  Future<CardanoVersion> getVersion(LedgerDevice device) {
    return ledger.sendOperation<CardanoVersion>(
      device,
      CardanoVersionOperation(),
      transformer: transformer,
    );
  }

  Future<String> getSerialNumber(LedgerDevice device) {
    return ledger.sendOperation<String>(
      device,
      CardanoGetSerialOperation(),
      transformer: transformer,
    );
  }

  Future<ExtendedPublicKey> getExtendedPublicKey(
    LedgerDevice device, {
    required ExtendedPublicKeyRequest request,
  }) async =>
      (await getExtendedPublicKeys(device, requests: [request]))[0];

  Future<List<ExtendedPublicKey>> getExtendedPublicKeys(
    LedgerDevice device, {
    required List<ExtendedPublicKeyRequest> requests,
  }) async {
    // TODO Add in coding guide the following:
    // * (almost) NEVER user setters ;
    //     rely on passing to the constructors the correct final value straight from the beginning
    // * All variables should be defined as "final" and should not change content
    // * All class fields passed as constructor argument should be "final"

    final List<ExtendedPublicKey> xPubKeys = [];
    for (final request in requests) {
      final String accountType = request.accountType;
      final List<int> derivationPaths = request.derivationPath;

      final operation = GetExtendedPublicKeyOperation(
        bip32Path: derivationPaths,
        accountType: accountType,
      );
      xPubKeys.add(
        await ledger.sendOperation<ExtendedPublicKey>(
          device,
          operation,
          transformer: transformer,
        ),
      );
    }

    if (requests.length != xPubKeys.length) {
      throw ValidationException(
        "getExtendedPublicKey returned ${xPubKeys.length} xPub keys ; ${requests.length} xPubs expected",
      );
    }

    return xPubKeys;
  }

  Future<String> deriveAddress(LedgerDevice device,
      {bool displayOnDevice = false}) async {
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

    final addressResult = await ledger.sendOperation<String>(
      device,
      CardanoDeriveAddressOperation(
        network: CardanoNetwork.testnet,
        bip32SpendingPath: bip32PaymentPath,
        bip32StakingPath: bip32StakePath,
      ),
      transformer: transformer,
    );

    return addressResult;
  }

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
