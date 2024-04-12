import 'package:ledger_cardano/src/utils/constants.dart';

class ValidationException implements Exception {
  final String message;
  ValidationException(this.message);

  @override
  String toString() => message;

  static Future<T> runSafely<T>(Future<T> Function() operation) async {
    try {
      return await operation();
    } catch (e) {
      throw ValidationException(e.toString());
    }
  }

  static void validateBip32Path(List<int> bipPath, String pathType, List<int> validFourthIndices) {
    if (bipPath.length != 5) {
      throw ValidationException('BIP44 $pathType path length must be exactly 5');
    }
    if (bipPath[0] != harden + 1852) {
      throw ValidationException("First $pathType path index must be 1852'");
    }
    if (bipPath[1] != harden + 1815) {
      throw ValidationException("Second $pathType path index must be 1815'");
    }
    if ((bipPath[2] & harden) == 0) {
      throw ValidationException("Third $pathType path index must be hardened");
    }
    if (!validFourthIndices.contains(bipPath[3])) {
      throw ValidationException("Fourth $pathType path index must be ${validFourthIndices.join(" or ")}");
    }
  }
}
