import 'package:ledger_cardano/src/utils/validation_exception.dart';

class ScriptDataHash {
  final String value;

  ScriptDataHash._(this.value);

  static const int _expectedLength = 64;

  factory ScriptDataHash(String hexString) {
    if (hexString.length != _expectedLength) {
      throw ValidationException('ScriptDataHash must be exactly $_expectedLength characters long.');
    }
    return ScriptDataHash._(hexString);
  }
}
