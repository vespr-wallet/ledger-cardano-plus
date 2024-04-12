import 'dart:typed_data';

import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';
import 'package:ledger_cardano/src/models/extended_public_key.dart';
import 'package:ledger_cardano/src/models/parsed_native_script.dart';
import 'package:ledger_cardano/src/models/parsed_simple_native_script.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/models/parsed_complex_native_script.dart';
import 'package:ledger_cardano/src/models/parsed_operational_certificate.dart';
import 'package:ledger_cardano/src/utils/hex_utils.dart';
import 'package:ledger_cardano/src/models/parsed_signing_request.dart';
import 'package:ledger_cardano/src/models/signed_transaction_data.dart';
import 'package:ledger_cardano/src/models/parsed_transaction.dart';
import 'package:ledger_cardano/src/models/parsed_input.dart';
import 'package:ledger_cardano/src/models/parsed_asset_group.dart';
import 'package:ledger_cardano/src/models/parsed_token.dart';
import 'package:ledger_cardano/src/models/parsed_output.dart';
import 'package:ledger_cardano/src/models/parsed_output_destination.dart';
import 'package:ledger_cardano/src/models/transaction_signing_mode.dart';
import 'package:ledger_cardano/src/utils/cardano_networks.dart';

Future<String> signTransaction(CardanoLedgerApp cardanoApp, LedgerDevice device) async {
  try {
    // Constructing the transaction to sign
    final txToSign = ParsedSigningRequest(
      signingMode: TransactionSigningModes.ordinaryTransaction(),
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: [
              harden + 1852,
              harden + 1815,
              harden + 0,
              0,
              0,
            ],
          ),
        ],
        outputs: [
          ParsedOutput.babbage(
            amount: BigInt.two,
            destination: ParsedOutputDestination.thirdParty(
              addressHex: '82d818582183581c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
            ),
            tokenBundle: [
              ParsedAssetGroup(
                policyIdHex: '95bec45c1a80b57b01c7295fed598ef5240ddafb81c24e48f1c5d980',
                tokens: [
                  ParsedToken(
                    assetNameHex: '594150',
                    amount: BigInt.from(100),
                  ),
                ],
              ),
            ],
          ),
        ],
        fee: BigInt.parse('175123'),
        ttl: BigInt.parse('10'),
      ),
      additionalWitnessPaths: [],
    );

    // Signing the transaction
    final SignedTransactionData signedTx = await cardanoApp.signTransaction(
      device,
      txToSign,
    );

    // Updating the UI state with the signed transaction data
    return 'Signed Transaction: {\n'
        '  txHashHex: \'${signedTx.txHashHex}\',\n'
        '  witnesses: [\n'
        '    {\n'
        '      path: ${signedTx.witnesses.first.path},\n' // Assuming path is an array you'd like to display differently
        '      witnessSignatureHex: \'${signedTx.witnesses.first.witnessSignatureHex}\'\n'
        '    }\n'
        '  ],\n'
        '}';
  } on LedgerException catch (e) {
    return 'Error signing transaction: ${e.message}, Code: ${e.errorCode}';
  } catch (e) {
    return 'Error signing transaction: ${e.toString()}';
  }
}

Future<String> reset(CardanoLedgerApp cardanoApp, LedgerDevice device) async {
  try {
    await cardanoApp.reset(device);
    return "Successfully reset the ledger device";
  } on LedgerException catch (e) {
    return 'Error fetching serial: ${e.message}, Code: ${e.errorCode}';
  }
}

Future<String> fetchSerial(CardanoLedgerApp cardanoApp, LedgerDevice device) async {
  try {
    return await cardanoApp.getSerialNumber(device);
  } on LedgerException catch (e) {
    return 'Error fetching serial: ${e.message}, Code: ${e.errorCode}';
  }
}

Future<String> fetchVersion(CardanoLedgerApp cardanoApp, LedgerDevice device) async {
  try {
    final version = await cardanoApp.getVersion(device);
    return 'App Version: ${version.versionMajor}.${version.versionMinor}.${version.versionPatch}\n'
        'Development Version: ${version.testMode ? "Yes" : "No"}';
  } on LedgerException catch (e) {
    return 'Error fetching version: ${e.message}, Code: ${e.errorCode}';
  }
}

Future<String> signOperationalCertificate(CardanoLedgerApp cardanoApp, LedgerDevice device) async {
  try {
    final operationalCertificate = ParsedOperationalCertificate(
      kesPublicKeyHex: '3d24bc547388cf2403fd978fc3d3a93d1f39acf68a9c00e40512084dc05f2822',
      kesPeriod: BigInt.from(47),
      issueCounter: BigInt.from(42),
      coldKeyPath: [
        harden + 1853,
        harden + 1815,
        harden + 0,
        harden + 0,
      ],
    );

    // Attempt to sign the operational certificate
    final Uint8List signature = await cardanoApp.signOperationalCertificate(
      device,
      operationalCertificate,
    );

    // Convert the signature to a hex string for comparison
    final String signatureHex = hex.encode(signature);

    return 'Operational Certificate Signature: $signatureHex';

    // Here you would compare signatureHex with the expected value manually
    // In a real app, you might display this on the UI or handle it as needed
  } catch (e) {
    return 'Error signing operational certificate: $e';
  }
}

Future<String> fetchStakeAddress(CardanoLedgerApp cardanoApp, LedgerDevice device) async {
  try {
    final stakingAddress = await cardanoApp.deriveStakingAddress(device);

    return "Staking Address (1852'/1815'/0'/2/0)\n$stakingAddress";
  } on LedgerException catch (e) {
    return "Error fetching Staking Address (1852'/1815'/0'/2/0): \n${e.message}, Code: ${e.errorCode}";
  } catch (e) {
    return "Generic Error fetching Staking Address (1852'/1815'/0'/2/0): \n${e.toString()}";
  }
}

Future<String> fetchReceiveAddresses(
  CardanoLedgerApp cardanoApp,
  LedgerDevice device, {
  required List<int> addressIndices,
}) async {
  try {
    final List<String> receiveAddress = [];
    for (final addressIndex in addressIndices) {
      final address = await cardanoApp.deriveReceiveAddress(device, addressIndex: addressIndex);
      receiveAddress.add("Receive Address (1852'/1815'/0'/0/$addressIndex)\n$address");
    }

    return receiveAddress.join("\n\n");
  } on LedgerException catch (e) {
    return "Error fetching Receive Addresses: \n${e.message}, Code: ${e.errorCode}";
  } catch (e) {
    return "Generic Error fetching Receive Addresses: \n${e.toString()}";
  }
}

Future<String> fetchChangeAddresses(
  CardanoLedgerApp cardanoApp,
  LedgerDevice device, {
  required List<int> addressIndices,
}) async {
  try {
    final List<String> receiveAddress = [];
    for (final addressIndex in addressIndices) {
      final address = await cardanoApp.deriveChangeAddress(device, addressIndex: addressIndex);
      receiveAddress.add("Change Address (1852'/1815'/0'/0/$addressIndex)\n$address");
    }

    return receiveAddress.join("\n\n");
  } on LedgerException catch (e) {
    return "Error fetching Change Addresses: \n${e.message}, Code: ${e.errorCode}";
  } catch (e) {
    return "Generic Error fetching Change Addresses: \n${e.toString()}";
  }
}

Future<String> fetchReceiveAndChangeAddress(
  CardanoLedgerApp cardanoApp,
  LedgerDevice device, {
  required int addressIndex,
}) async {
  try {
    final receiveAddress = await cardanoApp.deriveReceiveAddress(device, addressIndex: addressIndex);
    final changeAddress = await cardanoApp.deriveChangeAddress(device, addressIndex: addressIndex);

    return "Receive Address (1852'/1815'/0'/0/$addressIndex)\n$receiveAddress"
        "\n\nChange Address (1852'/1815'/0'/1/$addressIndex)\n$changeAddress";
  } on LedgerException catch (e) {
    return "Error fetching Receive/Change Addresses: \n${e.message}, Code: ${e.errorCode}";
  } catch (e) {
    return "Generic Error fetching Staking Address: \n${e.toString()}";
  }
}

Future<String> fetchPublicKey(CardanoLedgerApp cardanoApp, LedgerDevice device) async {
  try {
    final fetchedAccounts = await cardanoApp.getExtendedPublicKey(
      device,
      request: ExtendedPublicKeyRequest_Shelley(accountIndex: 0),
    );

    return "publicKeyHex: ${fetchedAccounts.publicKeyHex},\n"
        "chainCodeHex: ${fetchedAccounts.chainCodeHex}";
  } on LedgerException catch (e) {
    return 'Error fetching public key: ${e.message}, Code: ${e.errorCode}';
  } catch (e) {
    return 'Generic Error fetching public key: ${e.toString()}';
  }
}

Future<String> deriveComplexNativeScriptHash(CardanoLedgerApp cardanoApp, LedgerDevice device) async {
  try {
    // Constructing the complex script
    final complexScript = ParsedNativeScript.complex(
      ParsedComplexNativeScript.all(scripts: [
        ParsedNativeScript.simple(
          ParsedSimpleNativeScript.pubKeyThirdParty(
            keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
          ),
        ),
        ParsedNativeScript.complex(
          ParsedComplexNativeScript.any(scripts: [
            ParsedNativeScript.simple(
              ParsedSimpleNativeScript.pubKeyThirdParty(
                keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
              ),
            ),
            ParsedNativeScript.simple(
              ParsedSimpleNativeScript.pubKeyThirdParty(
                keyHashHex: '0241f2d196f52a92fbd2183d03b370c30b6960cfdeae364ffabac889',
              ),
            ),
          ]),
        ),
        ParsedNativeScript.complex(
          ParsedComplexNativeScript.nOfK(
            requiredCount: 2,
            scripts: [
              ParsedNativeScript.simple(
                ParsedSimpleNativeScript.pubKeyThirdParty(
                  keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
                ),
              ),
              ParsedNativeScript.simple(
                ParsedSimpleNativeScript.pubKeyThirdParty(
                  keyHashHex: '0241f2d196f52a92fbd2183d03b370c30b6960cfdeae364ffabac889',
                ),
              ),
              ParsedNativeScript.simple(
                ParsedSimpleNativeScript.pubKeyThirdParty(
                  keyHashHex: 'cecb1d427c4ae436d28cc0f8ae9bb37501a5b77bcc64cd1693e9ae20',
                ),
              ),
            ],
          ),
        ),
        ParsedNativeScript.simple(
          ParsedSimpleNativeScript.invalidBefore(slot: BigInt.from(100)),
        ),
        ParsedNativeScript.simple(
          ParsedSimpleNativeScript.invalidHereafter(slot: BigInt.from(200)),
        ),
      ]),
    );

    // Deriving the script hash
    final hash = await cardanoApp.deriveNativeScriptHash(
      device,
      complexScript,
      NativeScriptHashDisplayFormat.bech32,
    );

    // Updating the UI state with the derived script hash
    return 'Derived Complex Script Hash: $hash';
  } on LedgerException catch (e) {
    return 'Error deriving complex script hash: ${e.message}, Code: ${e.errorCode}';
  } catch (e) {
    return 'Error deriving complex script hash: ${e.toString()}';
  }
}

Future<String> deriveNativeScriptHash(CardanoLedgerApp cardanoApp, LedgerDevice device) async {
  try {
    final simpleScript = ParsedSimpleNativeScript.pubKeyDeviceOwned(
      path: [
        0x80000000 + 1852,
        0x80000000 + 1815,
        0x80000000 + 0,
        0,
        0,
      ],
    );

    final script = ParsedNativeScript.simple(simpleScript);

    final hash = await cardanoApp.deriveNativeScriptHash(
      device,
      script,
      NativeScriptHashDisplayFormat.bech32,
    );

    return 'Derived Script Hash: $hash';
  } on LedgerException catch (e) {
    return 'Error deriving script hash: ${e.message}, Code: ${e.errorCode}';
  } catch (e) {
    return 'Error deriving script hash: ${e.toString()}';
  }
}
