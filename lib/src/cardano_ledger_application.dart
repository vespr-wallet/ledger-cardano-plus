import 'dart:typed_data';

import 'package:ledger_cardano/src/cardano_transformer.dart';
import 'package:ledger_cardano/src/cardano_version.dart';
import 'package:ledger_cardano/src/models/extended_public_key.dart';
import 'package:ledger_cardano/src/models/parsed_native_script.dart';
import 'package:ledger_cardano/src/models/version_compatibility.dart';
import 'package:ledger_cardano/src/operations/cardano_derive_address_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_derive_native_script_hash_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_get_serial_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_public_key_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_sign_msgpack_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_version_operation.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
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
    return ledger.sendComplexOperation<CardanoVersion>(
      device,
      CardanoVersionOperation(),
      transformer: transformer,
    );
  }

  Future<String> getSerialNumber(LedgerDevice device) {
    return ledger.sendComplexOperation<String>(
      device,
      CardanoGetSerialOperation(),
      transformer: transformer,
    );
  }

  Future<String> deriveNativeScriptHash(
  LedgerDevice device,
  ParsedNativeScript script,
  NativeScriptHashDisplayFormat displayFormat,
) async {
  // Ensure the device's Cardano app version supports the requested operation
  final CardanoVersion deviceVersion = await getVersion(device);
  final VersionCompatibility compatibility = VersionCompatibility.checkVersionCompatibility(deviceVersion);

  if (!compatibility.isCompatible || !compatibility.supportsNativeScriptHashDerivation) {
    throw ValidationException(
      "Deriving native script hash not supported by the device's Cardano app version. "
      "Required minimum version: ${compatibility.recommendedVersion}, "
      "Device version: ${deviceVersion.versionName}",
    );
  }

  final operation = CardanoDeriveNativeScriptHashOperation(
    script: script,
    displayFormat: displayFormat,
  );

  final String scriptHash = await ledger.sendComplexOperation<String>(
    device,
    operation,
    transformer: transformer,
  );

  return scriptHash;
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
    final List<ExtendedPublicKey> xPubKeys = [];
    for (final request in requests) {
      final List<int> derivationPaths = request.derivationPath;
      final int minSupportedVersionCode = request.minSupportedVersionCode;

      // Ensure the device's Cardano app version supports the requested operation
      final CardanoVersion deviceVersion = await getVersion(device);
      if (deviceVersion.versionCode < minSupportedVersionCode) {
        throw ValidationException(
          "Operation not supported by the device's Cardano app version. "
          "Required minimum version: ${CardanoVersion.fromVersionCode(minSupportedVersionCode).versionName}, "
          "Device version: ${deviceVersion.versionName}",
        );
      }

      final operation = GetExtendedPublicKeyOperation(
        bip32Path: derivationPaths,
      );
      xPubKeys.add(
        await ledger.sendComplexOperation<ExtendedPublicKey>(
          device,
          operation,
          transformer: transformer,
        ),
      );
    }

    if (requests.length != xPubKeys.length) {
      throw ValidationException(
        "getExtendedPublicKeyV2 returned ${xPubKeys.length} xPub keys; ${requests.length} xPubs expected",
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

    final addressResult = await ledger.sendComplexOperation<String>(
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
