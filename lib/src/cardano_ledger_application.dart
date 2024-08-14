import 'dart:typed_data';

import 'package:ledger_cardano_plus/ledger_cardano_plus_models.dart';
import 'package:ledger_cardano_plus/src/cardano_transformer.dart';
import 'package:ledger_cardano_plus/src/cardano_version.dart';
import 'package:ledger_cardano_plus/src/operations/cardano_derive_address_operation.dart';
import 'package:ledger_cardano_plus/src/operations/cardano_derive_native_script_hash_operation.dart';
import 'package:ledger_cardano_plus/src/operations/cardano_get_serial_operation.dart';
import 'package:ledger_cardano_plus/src/operations/cardano_public_key_operation.dart';
import 'package:ledger_cardano_plus/src/operations/cardano_run_tests_operation.dart';
import 'package:ledger_cardano_plus/src/operations/cardano_sign_cvote_operation.dart';
import 'package:ledger_cardano_plus/src/operations/cardano_sign_operational_certificate_operation.dart';
import 'package:ledger_cardano_plus/src/operations/cardano_sign_transaction_operation.dart';
import 'package:ledger_cardano_plus/src/operations/cardano_version_operation.dart';
import 'package:ledger_cardano_plus/src/operations/complex_ledger_operations.dart';
import 'package:ledger_cardano_plus/src/operations/ledger_operations.dart';
import 'package:ledger_cardano_plus/src/utils/conversion_utils.dart';
import 'package:ledger_cardano_plus/src/utils/ledger_device_x.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';
import 'package:ledger_cardano_plus/src/utils/validation_exception.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart' as sdk;

CardanoLedger? _cardanoLedgerBle;
CardanoLedger? _cardanoLedgerUsb;

class CardanoLedger {
  static bool debugPrintEnabled = false;

  final LedgerConnectionType connectionType;
  final sdk.LedgerInterface ledger;
  final sdk.LedgerTransformer? transformer;

  static CardanoLedger ble({
    required Future<bool> Function({required bool unsupported}) onPermissionRequest,
  }) =>
      _cardanoLedgerBle ??= CardanoLedger._ble(onPermissionRequest);

  static CardanoLedger usb() => _cardanoLedgerUsb ??= CardanoLedger._usb();

  CardanoLedger._ble(
    Future<bool> Function({required bool unsupported}) onPermissionRequest,
  )   : connectionType = LedgerConnectionType.bluetooth,
        transformer = const CardanoTransformer(LedgerConnectionType.bluetooth),
        ledger = sdk.LedgerInterface.ble(
          onPermissionRequest: (state) => onPermissionRequest(unsupported: state == sdk.AvailabilityState.unsupported),
        );

  CardanoLedger._usb()
      : connectionType = LedgerConnectionType.usb,
        transformer = const CardanoTransformer(LedgerConnectionType.usb),
        ledger = sdk.LedgerInterface.usb();

  Stream<LedgerDevice> scanForDevices() => ledger.scan().map((device) => device.fromSdk());

  Future<CardanoLedgerConnection> connect(LedgerDevice device) async {
    final ledgerConnection = await ledger.connect(device.toSdk());
    return CardanoLedgerConnection(
      connectionType: connectionType,
      ledgerConnection: ledgerConnection,
    );
  }

  Future<void> dispose() async {
    switch (connectionType) {
      case LedgerConnectionType.bluetooth:
        _cardanoLedgerBle = null;
        break;
      case LedgerConnectionType.usb:
        _cardanoLedgerUsb = null;
        break;
    }
    ledger.dispose();
  }
}

class CardanoLedgerConnection {
  final sdk.LedgerConnection _ledgerConnection;
  final sdk.LedgerTransformer _transformer;

  final LedgerConnectionType connectionType;

  LedgerDevice get device => _ledgerConnection.device.fromSdk();
  bool get isDisconnected => _ledgerConnection.isDisconnected;

  CardanoLedgerConnection({
    required this.connectionType,
    required sdk.LedgerConnection ledgerConnection,
  })  : _ledgerConnection = ledgerConnection,
        _transformer = CardanoTransformer(connectionType);

  Future<void> disconnect() async => _ledgerConnection.disconnect();

  Future<void> reset() async {
    return _ledgerConnection
        .sendOperation(
          ResetOperation(),
          transformer: _transformer,
        )
        .ignore();
  }

  Future<CardanoVersion> getVersion() {
    return _ledgerConnection.sendComplexOperation<CardanoVersion>(
      const CardanoVersionOperation(),
      transformer: _transformer,
    );
  }

  Future<String> getSerialNumber() {
    return _ledgerConnection.sendComplexOperation<String>(
      const CardanoGetSerialOperation(),
      transformer: _transformer,
    );
  }

  Future<String> deriveNativeScriptHash(
    ParsedNativeScript script,
    NativeScriptHashDisplayFormat displayFormat,
  ) async {
    final CardanoVersion deviceVersion = await getVersion();
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

    final String scriptHash = await _ledgerConnection.sendComplexOperation<String>(
      operation,
      transformer: _transformer,
    );

    return scriptHash;
  }

  Future<ExtendedPublicKey> getExtendedPublicKey({
    required ExtendedPublicKeyRequest request,
  }) async =>
      (await getExtendedPublicKeys(requests: [request]))[0];

  Future<List<ExtendedPublicKey>> getExtendedPublicKeys({
    required List<ExtendedPublicKeyRequest> requests,
  }) async {
    final List<ExtendedPublicKey> xPubKeys = [];
    final CardanoVersion deviceVersion = await getVersion();

    for (final request in requests) {
      final List<int> derivationPaths = request.derivationPath;
      final int minSupportedVersionCode = request.minSupportedVersionCode;

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
        await _ledgerConnection.sendComplexOperation<ExtendedPublicKey>(
          operation,
          transformer: _transformer,
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

  Future<String> deriveAddressGeneric({
    // int accountIndex = 0,
    // int addressIndex = 0,
    required ParsedAddressParams params,
    required CardanoNetwork network,
  }) async {
    final operation = CardanoDeriveAddressOperation(
      params: params,
      network: network,
    );

    final addressResult = await _ledgerConnection.sendComplexOperation<String>(
      operation,
      transformer: _transformer,
    );

    Uint8List addressBytes = hexToBytes(addressResult);
    final String Function() encoder = switch (params) {
      ByronAddressParams() => () => addressHexToBase58(addressResult),
      ShelleyAddressParams(shelleyAddressParams: final shelleyParams) => () {
          final String bech32Hrp = switch (shelleyParams) {
            RewardKey() => network.stakeBech32Hrp,
            RewardScript() => network.stakeBech32Hrp,
            _ => network.paymentBech32Hrp,
          };
          return bech32EncodeAddress(bech32Hrp, addressBytes);
        },
    };
    return encoder();
  }

  Future<String> deriveChangeAddress({
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

    final addressResult = await _ledgerConnection.sendComplexOperation<String>(
      operation,
      transformer: _transformer,
    );

    Uint8List addressBytes = hexToBytes(addressResult);
    String bech32Hrp = network.paymentBech32Hrp;
    return bech32EncodeAddress(bech32Hrp, addressBytes);
  }

  Future<String> deriveReceiveAddress({
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

    // print(bip32StakePath.signingPath);
    // print(bip32ReceivePath.signingPath);

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

    final addressResult = await _ledgerConnection.sendComplexOperation<String>(
      operation,
      transformer: _transformer,
    );

    Uint8List addressBytes = hexToBytes(addressResult);
    String bech32Hrp = network.paymentBech32Hrp;
    return bech32EncodeAddress(bech32Hrp, addressBytes);
  }

  Future<String> deriveStakingAddress({
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

    final params = ParsedAddressParams.shelley(
      shelleyAddressParams: ShelleyAddressParamsData.rewardKey(
        stakingDataSource: StakingDataSource.path(path: path),
      ),
    );

    final operation = CardanoDeriveAddressOperation(
      params: params,
      network: network,
    );

    final addressResult = await _ledgerConnection.sendComplexOperation<String>(
      operation,
      transformer: _transformer,
    );

    Uint8List addressBytes = hexToBytes(addressResult);
    final result = bech32EncodeAddress(network.stakeBech32Hrp, addressBytes);

    return result;
  }

  Future<String> deriveEnterpriseAddress({
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

    final addressResult = await _ledgerConnection.sendComplexOperation<String>(
      operation,
      transformer: _transformer,
    );

    Uint8List addressBytes = hexToBytes(addressResult);
    String bech32Hrp = network.paymentBech32Hrp;
    return bech32EncodeAddress(bech32Hrp, addressBytes);
  }

  Future<Uint8List> signOperationalCertificate(
    ParsedOperationalCertificate operationalCertificate,
  ) async {
    final CardanoVersion deviceVersion = await getVersion();
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

    final Uint8List signature = await _ledgerConnection.sendComplexOperation<Uint8List>(
      operation,
      transformer: _transformer,
    );

    return signature;
  }

  Future<SignedTransactionData> signTransaction(
    ParsedSigningRequest signingRequest,
  ) async {
    final CardanoVersion deviceVersion = await getVersion();
    VersionCompatibility.checkVersionCompatibility(deviceVersion);
    VersionCompatibility.ensureRequestSupportedByAppVersion(deviceVersion, signingRequest);

    final operation = CardanoSignTransactionOperation(
      signingRequest: signingRequest,
      cardanoVersion: deviceVersion,
      network: CardanoNetwork.mainnet(),
    );

    final SignedTransactionData signedTransactionData =
        await _ledgerConnection.sendComplexOperation<SignedTransactionData>(
      operation,
      transformer: _transformer,
    );

    return signedTransactionData;
  }

  Future<SignedCIP36VoteData> signCIP36Vote(
    ParsedCVote parsedCVote,
  ) async {
    final CardanoVersion deviceVersion = await getVersion();
    final VersionCompatibility compatibility = VersionCompatibility.checkVersionCompatibility(deviceVersion);

    if (!compatibility.isCompatible || !compatibility.supportsCIP36Vote) {
      throw ValidationException(
        "CIP36 vote signing not supported by the device's Cardano app version. "
        "Required minimum version: ${compatibility.recommendedVersion}, "
        "Device version: ${deviceVersion.versionName}",
      );
    }

    final operation = CardanoSignCVoteOperation(
      cVote: parsedCVote,
      version: deviceVersion,
    );

    final SignedCIP36VoteData signedCIP36VoteData = await _ledgerConnection.sendComplexOperation<SignedCIP36VoteData>(
      operation,
      transformer: _transformer,
    );

    return signedCIP36VoteData;
  }

  Future<void> runTests() async {
    final CardanoVersion deviceVersion = await getVersion();
    final VersionCompatibility compatibility = VersionCompatibility.checkVersionCompatibility(deviceVersion);

    if (!compatibility.isCompatible) {
      throw ValidationException(
        "Running tests not supported by the device's Cardano app version. "
        "Required minimum version: ${compatibility.recommendedVersion}, "
        "Device version: ${deviceVersion.versionName}",
      );
    }

    const operation = CardanoRunTestsOperation();

    await _ledgerConnection.sendComplexOperation<void>(
      operation,
      transformer: _transformer,
    );
  }

  sendComplexOperation(device, CardanoDeriveAddressOperation operation, {required CardanoTransformer transformer}) {}
}
