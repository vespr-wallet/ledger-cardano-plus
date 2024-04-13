import 'package:ledger_cardano/ledger_cardano.dart';

class SignOperationalCertificateTestCase {
  final String testName;
  final ParsedOperationalCertificate operationalCertificate;
  final String expected;

  SignOperationalCertificateTestCase({
    required this.testName,
    required this.operationalCertificate,
    required this.expected,
  });
}

final signOperationalCertificateTests = [
  SignOperationalCertificateTestCase(
    testName: 'Should correctly sign a basic operational certificate',
    operationalCertificate: ParsedOperationalCertificate( 
      kesPublicKeyHex: '3d24bc547388cf2403fd978fc3d3a93d1f39acf68a9c00e40512084dc05f2822',
      kesPeriod: BigInt.from(47),
      issueCounter: BigInt.from(42), 
      coldKeyPath: [harden + 1853, harden + 1815, harden + 0, harden + 0],
    ),
    expected: 'ce8d7cab55217ed17f1cceb8cb487dcbe6172fdb5794cc26f78c2f1d2495598e72beb6209f113562f9488ef6e81e3e8f758ea072c3cf9c17095868f2e9213f0a',
  ),
];