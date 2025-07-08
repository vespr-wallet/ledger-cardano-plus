import 'dart:typed_data';

import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart' show LedgerDeviceException;

Future<String> signTransaction(CardanoLedgerConnection cardanoApp) async {
  try {
    // Constructing the transaction to sign
    final txToSign = ParsedSigningRequest(
      signingMode: TransactionSigningModes.ordinaryTransaction,
      tx: ParsedTransaction(
        network: CardanoNetwork.mainnet(),
        inputs: [
          ParsedInput(
            txHashHex: '3b40265111d8bb3c3c608d95b3a0bf83461ace32d79336579a1939b3aad1c0b7',
            outputIndex: 0,
            path: LedgerSigningPath.shelley(
              account: 0,
              address: 0,
              role: ShelleyAddressRole.payment,
            ),
          ),
        ],
        outputs: [
          ParsedOutput.babbage(
            amount: BigInt.from(5000000),
            destination: ParsedOutputDestination.thirdParty(
              addressHex:
                  '012a6a6953dd9e0fb944267e883b68be35024ac7e482b1b2194fb73e03261a359e4502059a395dde7c396132fbe7ae903587b470cd7329019f',
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
    final SignedTransactionData signedTx = await cardanoApp.signTransaction(txToSign);

    // Updating the UI state with the signed transaction data
    return 'Signed Transaction: {\n'
        '  txHashHex: \'${signedTx.txHashHex}\',\n'
        '  witnesses: [\n'
        '    {\n'
        '      path: 1852\'/1815\'/0\'/0/0,\n' // Assuming path is an array you'd like to display differently
        '      witnessSignatureHex: \'${signedTx.witnesses.first.witnessSignatureHex}\'\n'
        '    }\n'
        '  ],\n'
        '}';
  } on LedgerDeviceException catch (e) {
    return 'Error signing transaction: ${e.message}, Code: ${e.errorCode}';
  } catch (e) {
    return 'Error signing transaction: ${e.toString()}';
  }
}

Future<String> reset(CardanoLedgerConnection cardanoApp) async {
  try {
    await cardanoApp.reset();
    return "Successfully reset the ledger device";
  } on LedgerDeviceException catch (e) {
    return 'Error fetching serial: ${e.message}, Code: ${e.errorCode}';
  }
}

Future<String> fetchSerial(CardanoLedgerConnection cardanoApp) async {
  try {
    return await cardanoApp.getSerialNumber();
  } on LedgerDeviceException catch (e) {
    return 'Error fetching serial: ${e.message}, Code: ${e.errorCode}';
  }
}

Future<String> fetchVersion(CardanoLedgerConnection cardanoApp) async {
  try {
    final version = await cardanoApp.getVersion();
    return 'App Version: ${version.versionMajor}.${version.versionMinor}.${version.versionPatch}\n'
        'Development Version: ${version.testMode ? "Yes" : "No"}';
  } on LedgerDeviceException catch (e) {
    return 'Error fetching version: ${e.message}, Code: ${e.errorCode}';
  }
}

Future<String> signOperationalCertificate(CardanoLedgerConnection cardanoApp) async {
  try {
    final operationalCertificate = ParsedOperationalCertificate(
      kesPublicKeyHex: '3d24bc547388cf2403fd978fc3d3a93d1f39acf68a9c00e40512084dc05f2822',
      kesPeriod: BigInt.from(47),
      issueCounter: BigInt.from(42),
      coldKeyPath: LedgerSigningPath.custom([
        harden + 1853,
        harden + 1815,
        harden + 0,
        harden + 0,
      ]),
    );

    // Attempt to sign the operational certificate
    final Uint8List signature = await cardanoApp.signOperationalCertificate(
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

Future<String> fetchStakeAddress(CardanoLedgerConnection cardanoApp) async {
  try {
    final stakingAddress = await cardanoApp.deriveStakingAddress(network: CardanoNetwork.mainnet());

    return "Staking Address (1852'/1815'/0'/2/0)\n$stakingAddress";
  } on LedgerDeviceException catch (e) {
    return "Error fetching Staking Address (1852'/1815'/0'/2/0): \n${e.message}, Code: ${e.errorCode}";
  } catch (e) {
    return "Generic Error fetching Staking Address (1852'/1815'/0'/2/0): \n${e.toString()}";
  }
}

Future<String> fetchReceiveAddresses(
  CardanoLedgerConnection cardanoApp, {
  required List<int> addressIndices,
}) async {
  try {
    final List<String> receiveAddress = [];
    for (final addressIndex in addressIndices) {
      final address = await cardanoApp.deriveReceiveAddress(
        addressIndex: addressIndex,
        network: CardanoNetwork.mainnet(),
      );
      receiveAddress.add("Receive Address (1852'/1815'/0'/0/$addressIndex)\n$address");
    }

    return receiveAddress.join("\n\n");
  } on LedgerDeviceException catch (e) {
    return "Error fetching Receive Addresses: \n${e.message}, Code: ${e.errorCode}";
  } catch (e) {
    return "Generic Error fetching Receive Addresses: \n${e.toString()}";
  }
}

Future<String> fetchChangeAddresses(
  CardanoLedgerConnection cardanoApp, {
  required List<int> addressIndices,
}) async {
  try {
    final List<String> receiveAddress = [];
    for (final addressIndex in addressIndices) {
      final address = await cardanoApp.deriveChangeAddress(
        addressIndex: addressIndex,
        network: CardanoNetwork.mainnet(),
      );
      receiveAddress.add("Change Address (1852'/1815'/0'/0/$addressIndex)\n$address");
    }

    return receiveAddress.join("\n\n");
  } on LedgerDeviceException catch (e) {
    return "Error fetching Change Addresses: \n${e.message}, Code: ${e.errorCode}";
  } catch (e) {
    return "Generic Error fetching Change Addresses: \n${e.toString()}";
  }
}

Future<String> fetchReceiveAndChangeAddress(
  CardanoLedgerConnection cardanoApp, {
  required int addressIndex,
}) async {
  try {
    final receiveAddress = await cardanoApp.deriveReceiveAddress(
      addressIndex: addressIndex,
      network: CardanoNetwork.mainnet(),
    );
    final changeAddress = await cardanoApp.deriveChangeAddress(
      addressIndex: addressIndex,
      network: CardanoNetwork.mainnet(),
    );

    return "Receive Address (1852'/1815'/0'/0/$addressIndex)\n$receiveAddress"
        "\n\nChange Address (1852'/1815'/0'/1/$addressIndex)\n$changeAddress";
  } on LedgerDeviceException catch (e) {
    return "Error fetching Receive/Change Addresses: \n${e.message}, Code: ${e.errorCode}";
  } catch (e) {
    return "Generic Error fetching Staking Address: \n${e.toString()}";
  }
}

Future<String> fetchPublicKey(CardanoLedgerConnection cardanoApp) async {
  try {
    final fetchedAccounts = await cardanoApp.getExtendedPublicKey(
      request: ExtendedPublicKeyRequest_Shelley(accountIndex: 0),
    );

    return "publicKeyHex: ${fetchedAccounts.publicKeyHex},\n\n"
        "chainCodeHex: ${fetchedAccounts.chainCodeHex}\n\n"
        "xPub: ${fetchedAccounts.xPub}\n\n"
        "acctXvk: ${fetchedAccounts.acctXvk}\n\n"
        "acctVk: ${fetchedAccounts.acctVk}";
  } on LedgerDeviceException catch (e) {
    return 'Error fetching public key: ${e.message}, Code: ${e.errorCode}';
  } catch (e) {
    return 'Generic Error fetching public key: ${e.toString()}';
  }
}

Future<String> deriveComplexNativeScriptHash(CardanoLedgerConnection cardanoApp) async {
  try {
    // Constructing the complex script
    final complexScript = ParsedNativeScript.complex(
      ParsedComplexNativeScript.all(
        scripts: [
          ParsedNativeScript.simple(
            ParsedSimpleNativeScript.pubKeyThirdParty(
              keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
            ),
          ),
          ParsedNativeScript.complex(
            ParsedComplexNativeScript.any(
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
              ],
            ),
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
        ],
      ),
    );

    // Deriving the script hash
    final hash = await cardanoApp.deriveNativeScriptHash(
      complexScript,
      NativeScriptHashDisplayFormat.bech32,
    );

    // Updating the UI state with the derived script hash
    return 'Derived Complex Script Hash: $hash';
  } on LedgerDeviceException catch (e) {
    return 'Error deriving complex script hash: ${e.message}, Code: ${e.errorCode}';
  } catch (e) {
    return 'Error deriving complex script hash: ${e.toString()}';
  }
}

Future<String> deriveNativeScriptHash(CardanoLedgerConnection cardanoApp) async {
  try {
    final simpleScript = ParsedSimpleNativeScript.pubKeyDeviceOwned(
      path: LedgerSigningPath.shelley(
        account: 0,
        address: 0,
        role: ShelleyAddressRole.payment,
      ),
    );

    final script = ParsedNativeScript.simple(simpleScript);

    final hash = await cardanoApp.deriveNativeScriptHash(
      script,
      NativeScriptHashDisplayFormat.bech32,
    );

    return 'Derived Script Hash: $hash';
  } on LedgerDeviceException catch (e) {
    return 'Error deriving script hash: ${e.message}, Code: ${e.errorCode}';
  } catch (e) {
    return 'Error deriving script hash: ${e.toString()}';
  }
}
