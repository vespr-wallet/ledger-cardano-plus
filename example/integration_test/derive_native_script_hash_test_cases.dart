import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_cardano/src/models/ledger_signing_path.dart';

class ValidNativeScriptTestCase {
  final String testName;
  final ParsedNativeScript script;
  final NativeScriptHashDisplayFormat displayFormat;
  final String expectedHash;

  ValidNativeScriptTestCase({
    required this.testName,
    required this.script,
    required this.displayFormat,
    required this.expectedHash,
  });
}

final validNativeScriptTestCases = [
  ValidNativeScriptTestCase(
    testName: 'PUBKEY - device owned',
    script: ParsedNativeScript.simple(
      ParsedSimpleNativeScript.pubKeyDeviceOwned(
        path: LedgerSigningPath.custom([harden + 1852, harden + 1815, harden + 0,  0,  0]),
      ),
    ),
    displayFormat: NativeScriptHashDisplayFormat.bech32,
    expectedHash: '5102a193b3d5f0c256fcc425836ffb15e7d96d3389f5e57dc6bea726',
  ),
  ValidNativeScriptTestCase(
    testName: 'PUBKEY - third party',
    script: ParsedNativeScript.simple(
      ParsedSimpleNativeScript.pubKeyThirdParty(
        keyHashHex: '3a55d9f68255dfbefa1efd711f82d005fae1be2e145d616c90cf0fa9',
      ),
    ),
    displayFormat: NativeScriptHashDisplayFormat.bech32,
    expectedHash: '855228f5ecececf9c85618007cc3c2e5bdf5e6d41ef8d6fa793fe0eb',
  ),
  //TODO: Faulty test restarts the ledger , LATEST INSTRUCTION / APDU COMMAND : Finish Whole Native Script: d71203000101
  // ValidNativeScriptTestCase(
  //   testName: 'ALL script',
  //   script: ParsedNativeScript.complex(
  //     ParsedComplexNativeScript.all(
  //       scripts: [
  //         ParsedNativeScript.simple(
  //           ParsedSimpleNativeScript.pubKeyThirdParty(
  //             keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
  //           ),
  //         ),
  //         ParsedNativeScript.simple(
  //           ParsedSimpleNativeScript.pubKeyThirdParty(
  //             keyHashHex: '0241f2d196f52a92fbd2183d03b370c30b6960cfdeae364ffabac889',
  //           ),
  //         ),
  //       ],
  //     ),
  //   ),
  //   displayFormat: NativeScriptHashDisplayFormat.bech32,
  //   expectedHash: 'af5c2ce476a6ede1c879f7b1909d6a0b96cb2081391712d4a355cef6',
  // ),
  ValidNativeScriptTestCase(
    testName: 'ALL script (no subscripts)',
    script: ParsedNativeScript.complex(
      ParsedComplexNativeScript.all(scripts: []),
    ),
    displayFormat: NativeScriptHashDisplayFormat.bech32,
    expectedHash: 'd441227553a0f1a965fee7d60a0f724b368dd1bddbc208730fccebcf',
  ),
  //TODO: Faulty test restarts the ledger , LATEST INSTRUCTION / APDU COMMAND : Finish Whole Native Script: d71203000101
  // ValidNativeScriptTestCase(
  //   testName: 'ANY script',
  //   script: ParsedNativeScript.complex(
  //     ParsedComplexNativeScript.any(
  //       scripts: [
  //         ParsedNativeScript.simple(
  //           ParsedSimpleNativeScript.pubKeyThirdParty(
  //             keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
  //           ),
  //         ),
  //         ParsedNativeScript.simple(
  //           ParsedSimpleNativeScript.pubKeyThirdParty(
  //             keyHashHex: '0241f2d196f52a92fbd2183d03b370c30b6960cfdeae364ffabac889',
  //           ),
  //         ),
  //       ],
  //     ),
  //   ),
  //   displayFormat: NativeScriptHashDisplayFormat.bech32,
  //   expectedHash: 'd6428ec36719146b7b5fb3a2d5322ce702d32762b8c7eeeb797a20db',
  // ),
  ValidNativeScriptTestCase(
    testName: 'ANY script (no subscripts)',
    script: ParsedNativeScript.complex(
      ParsedComplexNativeScript.any(scripts: []),
    ),
    displayFormat: NativeScriptHashDisplayFormat.bech32,
    expectedHash: '52dc3d43b6d2465e96109ce75ab61abe5e9c1d8a3c9ce6ff8a3af528',
  ),
  //TODO: Faulty test restarts the ledger , LATEST INSTRUCTION / APDU COMMAND : Finish Whole Native Script: d71203000101
  // ValidNativeScriptTestCase(
  //   testName: 'N_OF_K script',
  //   script: ParsedNativeScript.complex(
  //     ParsedComplexNativeScript.nOfK(
  //       requiredCount: 2,
  //       scripts: [
  //         ParsedNativeScript.simple(
  //           ParsedSimpleNativeScript.pubKeyThirdParty(
  //             keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
  //           ),
  //         ),
  //         ParsedNativeScript.simple(
  //           ParsedSimpleNativeScript.pubKeyThirdParty(
  //             keyHashHex: '0241f2d196f52a92fbd2183d03b370c30b6960cfdeae364ffabac889',
  //           ),
  //         ),
  //       ],
  //     ),
  //   ),
  //   displayFormat: NativeScriptHashDisplayFormat.bech32,
  //   expectedHash: '78963f8baf8e6c99ed03e59763b24cf560bf12934ec3793eba83377b',
  // ),
  ValidNativeScriptTestCase(
    testName: 'N_OF_K script (no subscripts)',
    script: ParsedNativeScript.complex(
      ParsedComplexNativeScript.nOfK(
        requiredCount: 0,
        scripts: [],
      ),
    ),
    displayFormat: NativeScriptHashDisplayFormat.bech32,
    expectedHash: '3530cc9ae7f2895111a99b7a02184dd7c0cea7424f1632d73951b1d7',
  ),
  ValidNativeScriptTestCase(
    testName: 'INVALID_BEFORE script',
    script: ParsedNativeScript.simple(
      ParsedSimpleNativeScript.invalidBefore(slot: BigInt.from(42)),
    ),
    displayFormat: NativeScriptHashDisplayFormat.bech32,
    expectedHash: '2a25e608a683057e32ea38b50ce8875d5b34496b393da8d25d314c4e',
  ),
  ValidNativeScriptTestCase(
    testName: 'INVALID_BEFORE script (slot is a big number)',
    script: ParsedNativeScript.simple(
      ParsedSimpleNativeScript.invalidBefore(slot: BigInt.parse('18446744073709551615')),
    ),
    displayFormat: NativeScriptHashDisplayFormat.bech32,
    expectedHash: 'd2469adac494849dd27d1b344b74cc6cd5bf31fbd01c879eae84c04b',
  ),
  ValidNativeScriptTestCase(
    testName: 'INVALID_HEREAFTER script',
    script: ParsedNativeScript.simple(
      ParsedSimpleNativeScript.invalidHereafter(slot: BigInt.from(42)),
    ),
    displayFormat: NativeScriptHashDisplayFormat.bech32,
    expectedHash: '1620dc65993296335183f23ff2f7747268168fabbeecbf24c8a20194',
  ),
  ValidNativeScriptTestCase(
    testName: 'INVALID_HEREAFTER script (slot is a big number)',
    script: ParsedNativeScript.simple(
      ParsedSimpleNativeScript.invalidHereafter(slot: BigInt.parse('18446744073709551615')),
    ),
    displayFormat: NativeScriptHashDisplayFormat.bech32,
    expectedHash: 'da60fa40290f93b889a88750eb141fd2275e67a1255efb9bac251005',
  ),
  //TODO: Faulty test restarts the ledger , LATEST INSTRUCTION / APDU COMMAND : Finish Whole Native Script: d71203000101
  // ValidNativeScriptTestCase(
  //   testName: 'Nested native scripts',
  //   script: ParsedNativeScript.complex(
  //     ParsedComplexNativeScript.all(
  //       scripts: [
  //         ParsedNativeScript.simple(
  //           ParsedSimpleNativeScript.pubKeyThirdParty(
  //             keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
  //           ),
  //         ),
  //         ParsedNativeScript.complex(
  //           ParsedComplexNativeScript.any(
  //             scripts: [
  //               ParsedNativeScript.simple(
  //                 ParsedSimpleNativeScript.pubKeyThirdParty(
  //                   keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
  //                 ),
  //               ),
  //               ParsedNativeScript.simple(
  //                 ParsedSimpleNativeScript.pubKeyThirdParty(
  //                   keyHashHex: '0241f2d196f52a92fbd2183d03b370c30b6960cfdeae364ffabac889',
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         ParsedNativeScript.complex(
  //           ParsedComplexNativeScript.nOfK(
  //             requiredCount: 2,
  //             scripts: [
  //               ParsedNativeScript.simple(
  //                 ParsedSimpleNativeScript.pubKeyThirdParty(
  //                   keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
  //                 ),
  //               ),
  //               ParsedNativeScript.simple(
  //                 ParsedSimpleNativeScript.pubKeyThirdParty(
  //                   keyHashHex: '0241f2d196f52a92fbd2183d03b370c30b6960cfdeae364ffabac889',
  //                 ),
  //               ),
  //               ParsedNativeScript.simple(
  //                 ParsedSimpleNativeScript.pubKeyThirdParty(
  //                   keyHashHex: 'cecb1d427c4ae436d28cc0f8ae9bb37501a5b77bcc64cd1693e9ae20',
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         ParsedNativeScript.simple(
  //           ParsedSimpleNativeScript.invalidBefore(slot: BigInt.from(100)),
  //         ),
  //         ParsedNativeScript.simple(
  //           ParsedSimpleNativeScript.invalidHereafter(slot: BigInt.from(200)),
  //         ),
  //       ],
  //     ),
  //   ),
  //   displayFormat: NativeScriptHashDisplayFormat.bech32,
  //   expectedHash: '0d63e8d2c5a00cbcffbdf9112487c443466e1ea7d8c834df5ac5c425',
  // ),
  //TODO: Faulty test restarts the ledger , LATEST INSTRUCTION / APDU COMMAND : Finish Whole Native Script: d71203000101
  // ValidNativeScriptTestCase(
  //   testName: 'Nested native scripts #2',
  //   script: ParsedNativeScript.complex(
  //     ParsedComplexNativeScript.all(
  //       scripts: [
  //         ParsedNativeScript.complex(
  //           ParsedComplexNativeScript.any(
  //             scripts: [
  //               ParsedNativeScript.simple(
  //                 ParsedSimpleNativeScript.pubKeyThirdParty(
  //                   keyHashHex: 'c4b9265645fde9536c0795adbcc5291767a0c61fd62448341d7e0386',
  //                 ),
  //               ),
  //               ParsedNativeScript.simple(
  //                 ParsedSimpleNativeScript.pubKeyThirdParty(
  //                   keyHashHex: '0241f2d196f52a92fbd2183d03b370c30b6960cfdeae364ffabac889',
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   ),
  //   displayFormat: NativeScriptHashDisplayFormat.bech32,
  //   expectedHash: '903e52ef2421abb11562329130330763583bb87cd98006b70ecb1b1c',
  // ),
  //TODO: Faulty test restarts the ledger , LATEST INSTRUCTION / APDU COMMAND : Finish Whole Native Script: d71203000101
  // ValidNativeScriptTestCase(
  //   testName: 'Nested native scripts #3',
  //   script: ParsedNativeScript.complex(
  //     ParsedComplexNativeScript.nOfK(
  //       requiredCount: 0,
  //       scripts: [
  //         ParsedNativeScript.complex(
  //           ParsedComplexNativeScript.all(
  //             scripts: [
  //               ParsedNativeScript.complex(
  //                 ParsedComplexNativeScript.any(
  //                   scripts: [
  //                     ParsedNativeScript.complex(
  //                       ParsedComplexNativeScript.nOfK(
  //                         requiredCount: 0,
  //                         scripts: [],
  //                       ),
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   ),
  //   displayFormat: NativeScriptHashDisplayFormat.bech32,
  //   expectedHash: 'ed1dd7ef95caf389669c62618eb7f7aa7eadd08feb76618db2ae0cfc',
  // ),
];

class InvalidOnLedgerScriptTestCase {
  final String testName;
  final ParsedNativeScript script;

  InvalidOnLedgerScriptTestCase({
    required this.testName,
    required this.script,
  });
}

final invalidOnLedgerScriptTestCases = [
  InvalidOnLedgerScriptTestCase(
    testName: 'PUBKEY - invalid key path',
    script: ParsedNativeScript.simple(
      ParsedSimpleNativeScript.pubKeyDeviceOwned(
        path: LedgerSigningPath.custom([0, 0, 0, 0, 0, 0]),
      ),
    ),
  ),
  InvalidOnLedgerScriptTestCase(
    testName: 'PUBKEY - invalid key hash (too short)',
    script: ParsedNativeScript.simple(
      ParsedSimpleNativeScript.pubKeyThirdParty(
        keyHashHex: '3a55d9f68255dfbefa1efd711f82d005fae1be2e145d616c90cf0fa',
      ),
    ),
  ),
  InvalidOnLedgerScriptTestCase(
    testName: 'PUBKEY - invalid key hash (not hex)',
    script: ParsedNativeScript.simple(
      ParsedSimpleNativeScript.pubKeyThirdParty(
        keyHashHex: '3g55d9f68255dfbefa1efd711f82d005fae1be2e145d616c90cf0fa9',
      ),
    ),
  ),
  InvalidOnLedgerScriptTestCase(
    testName: 'N_OF_K - invalid required count (higher than number of scripts)',
    script: ParsedNativeScript.complex(
      ParsedComplexNativeScript.nOfK(
        requiredCount: 1,
        scripts: [],
      ),
    ),
  ),
  InvalidOnLedgerScriptTestCase(
    testName: 'N_OF_K - invalid required count (negative number)',
    script: ParsedNativeScript.complex(
      ParsedComplexNativeScript.nOfK(
        requiredCount: -1,
        scripts: [
          ParsedNativeScript.simple(
            ParsedSimpleNativeScript.pubKeyThirdParty(
              keyHashHex: '3a55d9f68255dfbefa1efd711f82d005fae1be2e145d616c90cf0fa9',
            ),
          ),
        ],
      ),
    ),
  ),
  InvalidOnLedgerScriptTestCase(
    testName: 'INVALID_BEFORE - invalid invalidBefore (negative number) as a subscript',
    script: ParsedNativeScript.complex(
      ParsedComplexNativeScript.any(
        scripts: [
          ParsedNativeScript.simple(
            ParsedSimpleNativeScript.pubKeyThirdParty(
              keyHashHex: '3a55d9f68255dfbefa1efd711f82d005fae1be2e145d616c90cf0fa9',
            ),
          ),
          ParsedNativeScript.simple(
            ParsedSimpleNativeScript.invalidBefore(slot: BigInt.from(-1)),
          ),
        ],
      ),
    ),
  ),
  InvalidOnLedgerScriptTestCase(
    testName: 'INVALID_HEREAFTER - invalid invalidHereafter (negative number)',
    script: ParsedNativeScript.simple(
      ParsedSimpleNativeScript.invalidHereafter(slot: BigInt.from(-1)),
    ),
  ),
];
