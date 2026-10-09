import 'package:flutter_test/flutter_test.dart';
import 'package:ledger_cardano_plus/ledger_cardano_plus.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('CardanoLedger shared instance', () {
    test('is only disposed once every caller disposed it', () async {
      final first = CardanoLedger.usb();
      final second = CardanoLedger.usb();
      expect(identical(first, second), isTrue);

      await first.dispose();
      final third = CardanoLedger.usb();
      expect(identical(third, second), isTrue, reason: 'still referenced by second and third');

      await second.dispose();
      await third.dispose();
      final fresh = CardanoLedger.usb();
      expect(identical(fresh, first), isFalse, reason: 'previous instance was released by every caller');

      await fresh.dispose();
    });

    test('extra dispose calls do not release a newer instance', () async {
      final old = CardanoLedger.usb();
      await old.dispose();

      final current = CardanoLedger.usb();
      await old.dispose();
      expect(identical(CardanoLedger.usb(), current), isTrue);

      await current.dispose();
      await current.dispose();
    });
  });
}
