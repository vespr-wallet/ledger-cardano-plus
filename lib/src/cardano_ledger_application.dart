import "dart:async";

import "package:flutter/foundation.dart";
import "package:ledger_flutter_plus/ledger_flutter_plus.dart" as sdk;
import "package:ledger_flutter_plus/ledger_flutter_plus_dart.dart" as sdk show LedgerComplexOperation;

import "../ledger_cardano_plus_models.dart";
import "cardano_transformer.dart";
import "cardano_version.dart";
import "operations/cardano_derive_address_operation.dart";
import "operations/cardano_derive_native_script_hash_operation.dart";
import "operations/cardano_get_serial_operation.dart";
import "operations/cardano_public_key_operation.dart";
import "operations/cardano_run_tests_operation.dart";
import "operations/cardano_sign_cvote_operation.dart";
import "operations/cardano_sign_message_operation.dart";
import "operations/cardano_sign_operational_certificate_operation.dart";
import "operations/cardano_sign_transaction_operation.dart";
import "operations/cardano_version_operation.dart";
import "operations/ledger_operations.dart";
import "utils/conversion_utils.dart";
import "utils/ledger_device_x.dart";
import "utils/utilities.dart";

CardanoLedger? _cardanoLedgerBle;
CardanoLedger? _cardanoLedgerUsb;

class CardanoLedger {
  static bool debugPrintEnabled = kDebugMode;

  final LedgerConnectionType connectionType;
  final sdk.LedgerInterface ledger;
  final sdk.LedgerTransformer? transformer;

  /// Number of [ble]/[usb] callers currently holding this shared instance. It is only torn down when the last one
  /// calls [dispose], so one caller disposing does not break the others.
  int _refCount = 0;

  /// Returns the shared bluetooth instance. Every call must be balanced by exactly one [dispose] call.
  static CardanoLedger ble({
    required Future<bool> Function({required bool unsupported}) onPermissionRequest,
  }) => (_cardanoLedgerBle ??= CardanoLedger._ble(onPermissionRequest)).._refCount += 1;

  /// Returns the shared USB instance. Every call must be balanced by exactly one [dispose] call.
  static CardanoLedger usb() => (_cardanoLedgerUsb ??= CardanoLedger._usb()).._refCount += 1;

  CardanoLedger._ble(
    Future<bool> Function({required bool unsupported}) onPermissionRequest,
  ) : connectionType = LedgerConnectionType.bluetooth,
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

  /// Releases this caller's reference. The underlying ledger is only disposed once every [ble]/[usb] caller has
  /// disposed; extra calls after that are no-ops.
  Future<void> dispose() async {
    if (_refCount == 0) {
      return;
    }
    _refCount--;
    if (_refCount > 0) {
      return;
    }

    switch (connectionType) {
      case LedgerConnectionType.bluetooth:
        if (identical(_cardanoLedgerBle, this)) {
          _cardanoLedgerBle = null;
        }
      case LedgerConnectionType.usb:
        if (identical(_cardanoLedgerUsb, this)) {
          _cardanoLedgerUsb = null;
        }
    }
    await ledger.dispose().catchError((err) {
      if (debugPrintEnabled) {
        debugPrint("Error disposing ledger: $err");
      }
    });
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
  }) : _ledgerConnection = ledgerConnection,
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

  Future<T> _send<T>(sdk.LedgerComplexOperation<T> operation) {
    return _ledgerConnection.sendOperation<T>(
      RetryStillInCallOperation(operation),
      transformer: _transformer,
    );
  }

  Future<CardanoVersion> getVersion() {
    return _send(const CardanoVersionOperation());
  }

  Future<String> getSerialNumber() {
    return _send(const CardanoGetSerialOperation());
  }

  Future<String> deriveNativeScriptHash(
    ParsedNativeScript script,
    NativeScriptHashDisplayFormat displayFormat,
  ) async {
    final CardanoVersion deviceVersion = await getVersion();
    final VersionCompatibility compatibility = VersionCompatibility.checkVersionCompatibility(deviceVersion);

    if (!compatibility.isCompatible || !compatibility.supportsNativeScriptHashDerivation) {
      throw LedgerCardanoVersionNotSupported(
        message: "Native script hash derivation not supported",
        wantedVersion: ">=3.0.0",
        era: "Mary",
      );
    }

    final operation = CardanoDeriveNativeScriptHashOperation(
      script: script,
      displayFormat: displayFormat,
      version: deviceVersion,
    );

    final String scriptHash = await _send(operation);

    return scriptHash;
  }

  Future<ExtendedPublicKey> getExtendedPublicKey({
    required ExtendedPublicKeyRequest request,
  }) async => (await getExtendedPublicKeys(requests: [request]))[0];

  Future<List<ExtendedPublicKey>> getExtendedPublicKeys({
    required List<ExtendedPublicKeyRequest> requests,
  }) async {
    final List<ExtendedPublicKey> xPubKeys = [];
    final CardanoVersion deviceVersion = await getVersion();

    for (final request in requests) {
      final List<int> derivationPaths = request.derivationPath;
      final int minSupportedVersionCode = request.minSupportedVersionCode;

      if (deviceVersion.versionCode < minSupportedVersionCode) {
        throw LedgerCardanoVersionNotSupported(
          message: "getExtendedPublicKeys",
          wantedVersion: CardanoVersion.fromVersionCode(minSupportedVersionCode).versionName,
          era: "Babbage",
        );
      }

      final operation = GetExtendedPublicKeyOperation(
        bip32Path: derivationPaths,
      );
      xPubKeys.add(await _send(operation));
    }

    if (requests.length != xPubKeys.length) {
      throw LedgerCardanoSdkInternalException(
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
    bool displayOnDevice = false,
  }) async {
    final operation = CardanoDeriveAddressOperation(
      params: params,
      network: network,
      display: displayOnDevice,
    );

    final addressResult = await _send(operation);

    final Uint8List addressBytes = hexToBytes(addressResult);
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
        spendingDataSource: SpendingDataSourcePath(path: bip32ChangePath),
        stakingDataSource: StakingDataSource.keyPath(path: bip32StakePath),
      ),
    );

    final operation = CardanoDeriveAddressOperation(
      params: params,
      network: network,
      display: displayOnDevice,
    );

    final addressResult = await _send(operation);

    final Uint8List addressBytes = hexToBytes(addressResult);
    final String bech32Hrp = network.paymentBech32Hrp;
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
        spendingDataSource: SpendingDataSourcePath(path: bip32ReceivePath),
        stakingDataSource: StakingDataSource.keyPath(path: bip32StakePath),
      ),
    );

    final operation = CardanoDeriveAddressOperation(
      params: params,
      network: network,
      display: displayOnDevice,
    );

    final addressResult = await _send(operation);

    final Uint8List addressBytes = hexToBytes(addressResult);
    final String bech32Hrp = network.paymentBech32Hrp;
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
        stakingDataSource: StakingDataSource.keyPath(path: path),
      ),
    );

    final operation = CardanoDeriveAddressOperation(
      params: params,
      network: network,
      display: displayOnDevice,
    );

    final addressResult = await _send(operation);

    final Uint8List addressBytes = hexToBytes(addressResult);
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
        spendingDataSource: SpendingDataSourcePath(path: path),
      ),
    );

    final operation = CardanoDeriveAddressOperation(
      params: params,
      network: network,
      display: displayOnDevice,
    );

    final addressResult = await _send(operation);

    final Uint8List addressBytes = hexToBytes(addressResult);
    final String bech32Hrp = network.paymentBech32Hrp;
    return bech32EncodeAddress(bech32Hrp, addressBytes);
  }

  Future<Uint8List> signOperationalCertificate(
    ParsedOperationalCertificate operationalCertificate,
  ) async {
    final CardanoVersion deviceVersion = await getVersion();
    final VersionCompatibility compatibility = VersionCompatibility.checkVersionCompatibility(deviceVersion);

    if (!compatibility.isCompatible || !compatibility.supportsOperationalCertificateSigning) {
      throw LedgerCardanoVersionNotSupported(
        message: "Operational certificate signing",
        wantedVersion: ">=2.4.0",
        era: "Mary",
      );
    }

    final operation = CardanoSignOperationalCertificateOperation(
      operationalCertificate: operationalCertificate,
    );

    final Uint8List signature = await _send(operation);

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
    );

    final SignedTransactionData signedTransactionData = await _send(operation);

    return signedTransactionData;
  }

  Future<SignedCIP36VoteData> signCIP36Vote(
    ParsedCVote parsedCVote,
  ) async {
    final CardanoVersion deviceVersion = await getVersion();
    final VersionCompatibility compatibility = VersionCompatibility.checkVersionCompatibility(deviceVersion);

    if (!compatibility.isCompatible || !compatibility.supportsCIP36Vote) {
      throw LedgerCardanoVersionNotSupported(
        message: "CIP36 voting",
        wantedVersion: "6.0.0",
        era: "Babbage",
      );
    }

    final operation = CardanoSignCVoteOperation(
      cVote: parsedCVote,
      version: deviceVersion,
    );

    final SignedCIP36VoteData signedCIP36VoteData = await _send(operation);

    return signedCIP36VoteData;
  }

  Future<SignedMessageData> signMessage({
    required ParsedMessageData messageData,
    required CardanoNetwork network,
  }) async {
    final CardanoVersion deviceVersion = await getVersion();
    final VersionCompatibility compatibility = VersionCompatibility.checkVersionCompatibility(deviceVersion);

    if (!compatibility.isCompatible || !compatibility.supportsMessageSigning) {
      throw LedgerCardanoVersionNotSupported(
        message: "CIP-8 message signing",
        wantedVersion: "7.1.0",
        era: "Conway",
      );
    }

    final operation = CardanoSignMessageOperation(
      msgData: messageData,
      version: deviceVersion,
      network: network,
    );

    final SignedMessageData signedMessageData = await _send(operation);

    return signedMessageData;
  }

  Future<void> runTests() async {
    final CardanoVersion deviceVersion = await getVersion();
    final VersionCompatibility compatibility = VersionCompatibility.checkVersionCompatibility(deviceVersion);

    if (!compatibility.isCompatible) {
      throw LedgerCardanoVersionNotSupported(
        message: "runTests",
        wantedVersion: ">=2.2.0",
        era: "Mary",
      );
    }

    const operation = CardanoRunTestsOperation();

    await _send(operation);
  }
}
