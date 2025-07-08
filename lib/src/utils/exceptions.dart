import "constants.dart";

sealed class LedgerCardanoException implements Exception {
  final String message;

  LedgerCardanoException(this.message);

  @override
  String toString() {
    // ignore: no_runtimetype_tostring
    return "$runtimeType: $message";
  }
}

class LedgerCardanoValidationException extends LedgerCardanoException {
  LedgerCardanoValidationException(super.message);
}

class LedgerCardanoSdkInternalException extends LedgerCardanoException {
  LedgerCardanoSdkInternalException(super.message);

  static Future<T> runSafely<T>(Future<T> Function() operation) async {
    try {
      return await operation();
    } catch (e) {
      throw LedgerCardanoSdkInternalException(e.toString());
    }
  }
}

class LedgerCardanoVersionNotSupported extends LedgerCardanoException {
  LedgerCardanoVersionNotSupported({
    required String message,
    required String wantedVersion,
    required String era,
  }) : super(
         "LedgerCardanoVersionNotSupported: requires ledger cardano version of at least $wantedVersion | era: $era | $message",
       );
}

class LedgerTransactionValidationException extends LedgerCardanoException {
  LedgerTransactionValidationException(super.message);

  static void validateBip32Path(List<int> bipPath, String pathType, List<int> validFourthIndices) {
    if (bipPath.length != 5) {
      throw LedgerTransactionValidationException("BIP44 $pathType path length must be exactly 5");
    }
    if (bipPath[0] != harden + 1852) {
      throw LedgerTransactionValidationException("First $pathType path index must be 1852'");
    }
    if (bipPath[1] != harden + 1815) {
      throw LedgerTransactionValidationException("Second $pathType path index must be 1815'");
    }
    if ((bipPath[2] & harden) == 0) {
      throw LedgerTransactionValidationException("Third $pathType path index must be hardened");
    }
    if (!validFourthIndices.contains(bipPath[3])) {
      throw LedgerTransactionValidationException(
        "Fourth $pathType path index must be ${validFourthIndices.join(" or ")}",
      );
    }
  }
}
