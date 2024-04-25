import 'dart:typed_data';

import 'package:ledger_cardano/src/cardano_transformer.dart';
import 'package:ledger_cardano/src/cardano_version.dart';
import 'package:ledger_cardano/src/models/extended_public_key.dart';
import 'package:ledger_cardano/src/models/ledger_signing_path.dart';
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
import 'package:ledger_cardano/src/operations/cardano_run_tests_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_sign_operational_certificate_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_sign_transaction_operation.dart';
import 'package:ledger_cardano/src/operations/cardano_version_operation.dart';
import 'package:ledger_cardano/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano/src/operations/ledger_operations.dart';
import 'package:ledger_cardano/src/utils/cardano_networks.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

class CardanoLedgerApp {
  static bool debugPrintEnabled = false;

  final Ledger ledger;
  final LedgerTransformer? transformer;

  const CardanoLedgerApp(
    this.ledger, {
    this.transformer = const CardanoTransformer(),
  });

  Future<void> reset(LedgerDevice device) async {
    return ledger
        .sendOperation(
          device,
          ResetOperation(),
          transformer: transformer,
        )
        .ignore();
  }

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

  Future<String> deriveChangeAddress(
    LedgerDevice device, {
    int accountIndex = 0,
    int addressIndex = 0,
    bool displayOnDevice = false,
    required CardanoNetwork network,
  }) async {
    final bip32StakePath = LedgerSigningPath.shelley(
      account: accountIndex,
      address: 0,
      role: ShelleyAddressRole.stake,
    );

    final bip32ChangePath = LedgerSigningPath.shelley(
      account: accountIndex,
      address: addressIndex,
      role: ShelleyAddressRole.change,
    );

    final params = ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource: SpendingDataSource.path(path: bip32ChangePath),
        stakingDataSource: StakingDataSource.path(path: bip32StakePath),
      ),
    );

    final operation = CardanoDeriveAddressOperation(
      params: params,
      network: network,
    );

    final addressResult = await ledger.sendComplexOperation<String>(
      device,
      operation,
      transformer: transformer,
    );

    Uint8List addressBytes = hexToBytes(addressResult);
    String bech32Hrp = network.paymentBech32Hrp;
    return bech32EncodeAddress(bech32Hrp, addressBytes);
  }

  Future<String> deriveReceiveAddress(
    LedgerDevice device, {
    int accountIndex = 0,
    int addressIndex = 0,
    bool displayOnDevice = false,
    required CardanoNetwork network,
  }) async {
    final bip32StakePath = LedgerSigningPath.shelley(
      account: accountIndex,
      address: 0,
      role: ShelleyAddressRole.stake,
    );

    final bip32ReceivePath = LedgerSigningPath.shelley(
      account: accountIndex,
      address: addressIndex,
      role: ShelleyAddressRole.payment,
    );

    print(bip32StakePath.signingPath);
    print(bip32ReceivePath.signingPath);

    final params = ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.basePaymentKeyStakeKey(
        spendingDataSource: SpendingDataSource.path(path: bip32ReceivePath),
        stakingDataSource: StakingDataSource.path(path: bip32StakePath),
      ),
    );

    final operation = CardanoDeriveAddressOperation(
      params: params,
      network: network,
    );

    final addressResult = await ledger.sendComplexOperation<String>(
      device,
      operation,
      transformer: transformer,
    );

    Uint8List addressBytes = hexToBytes(addressResult);
    String bech32Hrp = network.paymentBech32Hrp;
    return bech32EncodeAddress(bech32Hrp, addressBytes);
  }

 Future<String> deriveStakingAddress(
    LedgerDevice device, {
    int accountIndex = 0,
    int addressIndex = 0,
    bool displayOnDevice = false,
    required CardanoNetwork network,
  }) async {
    final LedgerSigningPath path = LedgerSigningPath.shelley(
      account: accountIndex,
      address: addressIndex,
      role: ShelleyAddressRole.stake,
    );

    print(path.signingPath);

    final params = ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.rewardKey(
        stakingDataSource: StakingDataSource.path(path: path),
      ),
    );

    final operation = CardanoDeriveAddressOperation(
      params: params,
      network: network,
    );

    final addressResult = await ledger.sendComplexOperation<String>(
      device,
      operation,
      transformer: transformer,
    );

    Uint8List addressBytes = hexToBytes(addressResult);
    final result = bech32EncodeAddress(network.stakeBech32Hrp, addressBytes);

    return result;
  }

  Future<String> deriveEnterpriseAddress(
    LedgerDevice device, {
    int accountIndex = 0,
    int addressIndex = 0,
    bool displayOnDevice = false,
    required CardanoNetwork network,
  }) async {
    final path = LedgerSigningPath.shelley(
      account: accountIndex,
      address: addressIndex,
      role: ShelleyAddressRole.payment,
    );

    final params = ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.enterpriseKey(
        spendingDataSource: SpendingDataSource.path(path: path),
      ),
    );

    final operation = CardanoDeriveAddressOperation(
      params: params,
      network: network,
    );

    final addressResult = await ledger.sendComplexOperation<String>(
      device,
      operation,
      transformer: transformer,
    );

    Uint8List addressBytes = hexToBytes(addressResult);
    String bech32Hrp = network.paymentBech32Hrp;
    return bech32EncodeAddress(bech32Hrp, addressBytes);
  }

  Future<Uint8List> signOperationalCertificate(
    LedgerDevice device,
    ParsedOperationalCertificate operationalCertificate,
  ) async {
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
    final CardanoVersion deviceVersion = await getVersion(device);
    VersionCompatibility.checkVersionCompatibility(deviceVersion);
    VersionCompatibility.ensureRequestSupportedByAppVersion(deviceVersion, signingRequest);

    final operation = CardanoSignTransactionOperation(
      signingRequest: signingRequest,
      cardanoVersion: deviceVersion,
      network: CardanoNetwork.mainnet(),
    );

    final SignedTransactionData signedTransactionData = await ledger.sendComplexOperation<SignedTransactionData>(
      device,
      operation,
      transformer: transformer,
    );

    return signedTransactionData;
  }

  Future<void> runTests(LedgerDevice device) async {
    final CardanoVersion deviceVersion = await getVersion(device);
    final VersionCompatibility compatibility = VersionCompatibility.checkVersionCompatibility(deviceVersion);

    if (!compatibility.isCompatible) {
      throw ValidationException(
        "Running tests not supported by the device's Cardano app version. "
        "Required minimum version: ${compatibility.recommendedVersion}, "
        "Device version: ${deviceVersion.versionName}",
      );
    }

    const operation = CardanoRunTestsOperation();

    await ledger.sendComplexOperation<void>(
      device,
      operation,
      transformer: transformer,
    );
  }
}
