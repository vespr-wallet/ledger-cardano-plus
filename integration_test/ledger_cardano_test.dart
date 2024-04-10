import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:ledger_cardano/ledger_cardano.dart';
import 'package:ledger_flutter/ledger_flutter.dart';

import 'test_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  // TestWidgetsFlutterBinding.ensureInitialized();

  late CardanoLedgerApp cardanoLedgerApp;
  late LedgerDevice device;

  setUpAll(() async {
    cardanoLedgerApp = await getCardanoLedgerApp();
    device = await cardanoLedgerApp.ledger.scan().first;
    await cardanoLedgerApp.ledger.connect(device);
  });

  tearDownAll(() async {
    await cardanoLedgerApp.ledger.disconnect(device);
    await cardanoLedgerApp.ledger.close(ConnectionType.ble);
  });

  testWidgets('Should run device tests', (_) async {
    await cardanoLedgerApp.runTests(device);
  });
}
