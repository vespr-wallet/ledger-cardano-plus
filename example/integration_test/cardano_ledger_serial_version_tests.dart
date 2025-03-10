import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';
import 'package:ledger_flutter_plus/ledger_flutter_plus.dart';

import 'test_utils.dart';

Future<String> _fetchSerial(CardanoLedgerConnection cardanoApp) async {
  try {
    final serial = await cardanoApp.getSerialNumber();
    print('Serial: $serial');
    return 'Device: ${cardanoApp.device.name}\nSerial: $serial';
  } on LedgerDeviceException catch (e) {
    return 'Error fetching serial: ${e.message}, Code: ${e.errorCode}';
  }
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Cardano Ledger App Tests', () {
    late CardanoLedgerConnection cardanoApp;

    setUpAll(() async {
      cardanoApp = await establishCardanoConnection();
      print('Connected to device: ${cardanoApp.device.name}');
    });

    testWidgets('Should correctly get the serial number of the device', (WidgetTester tester) async {
      final serialResponse = await _fetchSerial(cardanoApp);
      expectVespr(serialResponse.contains('Serial:'), isTrue);
      expectVespr(serialResponse.length, equals(14 + 'Device: ${cardanoApp.device.name}\nSerial: '.length));
    });

    test('Should correctly get the semantic version of device and check compatibility', () async {
      try {
        final version = await cardanoApp.getVersion();
        final compatibility = VersionCompatibility.checkVersionCompatibility(version);

        print(
            'Device: ${cardanoApp.device.name}\nApp Version: ${version.versionMajor}.${version.versionMinor}.${version.versionPatch}\nDevelopment Version: ${version.testMode ? "Yes" : "No"}');

        // Check major and minor version
        expectVespr(version.versionMajor, equals(7));
        expectVespr(version.versionMinor, equals(2));
        expectVespr(version.versionPatch, equals(1));

        // Check debug flag
        expectVespr(version.testMode, isFalse);

        // Check compatibility details
        expectVespr(compatibility.isCompatible, isTrue);
        expectVespr(compatibility.recommendedVersion, equals(">=7.2.1"));
        expectVespr(compatibility.supportsByronAddressDerivation, equals(!version.flags.isAppXS));
        expectVespr(compatibility.supportsMary, isTrue);
        expectVespr(compatibility.supportsCatalystRegistration, isTrue);
        expectVespr(compatibility.supportsCIP36, isTrue);
        expectVespr(compatibility.supportsZeroTtl, isTrue);
        expectVespr(compatibility.supportsPoolRegistrationAsOwner, equals(!version.flags.isAppXS));
        expectVespr(compatibility.supportsPoolRegistrationAsOperator, equals(!version.flags.isAppXS));
        expectVespr(compatibility.supportsPoolRetirement, equals(!version.flags.isAppXS));
        expectVespr(compatibility.supportsNativeScriptHashDerivation, equals(!version.flags.isAppXS));
        expectVespr(compatibility.supportsMultisigTransaction, isTrue);
        expectVespr(compatibility.supportsMint, isTrue);
        expectVespr(compatibility.supportsAlonzo, isTrue);
        expectVespr(compatibility.supportsReqSignersInOrdinaryTx, isTrue);
        expectVespr(compatibility.supportsBabbage, isTrue);
        expectVespr(compatibility.supportsCIP36Vote, isTrue);
        expectVespr(compatibility.supportsConway, isTrue);
      } catch (e) {
        print('Error fetching version: $e');
      }
    });

    test('Complete test', () async {
      print("Tests run");
    });
  });
}
