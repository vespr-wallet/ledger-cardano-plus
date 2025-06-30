// ignore_for_file: avoid_print

import "package:flutter_test/flutter_test.dart";
import "package:ledger_flutter_plus/ledger_flutter_plus.dart";

void main() {
  test("Example test", () {
    final c = ServiceNotSupportedException(
      connectionType: ConnectionType.ble,
      message: "Service not supported",
    );
    print(c);
    print(c);
    expect(1 + 1, 2);
  });
}
