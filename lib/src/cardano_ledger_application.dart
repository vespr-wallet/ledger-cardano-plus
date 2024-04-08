import 'dart:typed_data';

import 'package:ledger_cardano/src/cardano_transformer.dart';
import 'package:ledger_cardano/src/cardano_version.dart';
import 'package:ledger_cardano/src/models/extended_public_key.dart';
import 'package:ledger_cardano/src/models/parsed_address_params.dart';
import 'package:ledger_cardano/src/models/parsed_native_script.dart';
import 'package:ledger_cardano/src/models/parsed_operational_certificate.dart';
import 'package:ledger_cardano/src/models/parsed_signing_request.dart';
import 'package:ledger_cardano/src/models/shelley_address_params.dart';
import 'package:ledger_cardano/src/models/signed_transaction_data.dart';
import 'package:ledger_cardano/src/models/spending_data_source.dart';
import 'package:ledger_cardano/src/models/staking_data_source.dart';
import 'package:ledger_cardano/src/models/version_compatibility.dart';
import 'package:ledger_cardano/src/operations/cardano_derive_address_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_derive_native_script_hash_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_get_serial_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_public_key_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_sign_operational_certificate_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_sign_transaction_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_version_operation.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/utils/cardano_networks.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

/// A [LedgerApp] used to perform BLE operations on a ledger [Cardano]
/// application.
///
/// https://github.com/cardano-foundation/ledger-app-cardano/blob/master/doc/design_doc.md
/// https://github.com/cardano-foundation/ledgerjs-hw-app-cardano
class CardanoLedgerApp {
  static bool debugPrintEnabled = false;

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
      const CardanoVersionOperation(),
      transformer: transformer,
    );
  }

  Future<String> getSerialNumber(LedgerDevice device) {
    return ledger.sendComplexOperation<String>(
      device,
      const CardanoGetSerialOperation(),
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

  Future<String> deriveAddress(LedgerDevice device, {bool displayOnDevice = false}) async {
    final bip32PaymentPath = [
      harden + 1852,
      harden + 1815,
      harden + accountIndex,
      0,
      1,
    ];
    final bip32StakePath = [
      harden + 1852,
      harden + 1815,
      harden + accountIndex,
      2,
      0,
    ];

    final params = ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        networkId: CardanoNetwork.mainnet.networkId,
        spendingDataSource: SpendingDataSource.path(path: bip32PaymentPath),
        stakingDataSource: StakingDataSource.keyPath(path: bip32StakePath),
      ),
    );

    final operation = CardanoDeriveAddressOperation(
      params: params,
      network: CardanoNetwork.mainnet,
    );

    final addressResult = await ledger.sendComplexOperation<String>(
      device,
      operation,
      transformer: transformer,
    );

    Uint8List addressBytes = hexToBytes(addressResult);
    final result = bech32EncodeAddress('addr', addressBytes);

    return result;
  }

  Future<Uint8List> signOperationalCertificate(
    LedgerDevice device,
    ParsedOperationalCertificate operationalCertificate,
  ) async {
    // Ensure the device's Cardano app version supports the requested operation
    final CardanoVersion deviceVersion = await getVersion(device);
    final VersionCompatibility compatibility = VersionCompatibility.checkVersionCompatibility(deviceVersion);

    if (!compatibility.isCompatible || !compatibility.supportsOperationalCertificateSigning) {
      throw ValidationException(
        "Operational certificate signing not supported by the device's Cardano app version. "
        "Required minimum version: ${compatibility.recommendedVersion}, "
        "Device version: ${deviceVersion.versionName}",
      );
    }

    final operation = CardanoSignOperationalCertificateOperation(
      operationalCertificate: operationalCertificate,
    );

    final Uint8List signature = await ledger.sendComplexOperation<Uint8List>(
      device,
      operation,
      transformer: transformer,
    );

    return signature;
  }

  Future<SignedTransactionData> signTransaction(
    LedgerDevice device,
    ParsedSigningRequest signingRequest,
  ) async {
    // Ensure the device's Cardano app version supports the requested operation
    final CardanoVersion deviceVersion = await getVersion(device);
    VersionCompatibility.checkVersionCompatibility(deviceVersion);
    VersionCompatibility.ensureRequestSupportedByAppVersion(deviceVersion, signingRequest);

    // Create the operation
    final operation = CardanoSignTransactionOperation(
      signingRequest: signingRequest,
      cardanoVersion: deviceVersion,
    );

    // Send the operation to the ledger device
    final SignedTransactionData signedTransactionData = await ledger.sendComplexOperation<SignedTransactionData>(
      device,
      operation,
      transformer: transformer,
    );

    return signedTransactionData;
  }
}
