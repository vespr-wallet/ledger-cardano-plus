sealed class LedgerCardanoException implements Exception {
  final String message;

  LedgerCardanoException(this.message);

  @override
  String toString() {
    return 'LedgerCardanoException: $message';
  }
}

class VersionNotSupported extends LedgerCardanoException {
  VersionNotSupported(String message, String wantedVersion)
      : super(
          "VersionNotSupported (requires $wantedVersion): $message",
        );
}

class OtherLedgerCardanoException extends LedgerCardanoException {
  OtherLedgerCardanoException(String message)
      : super("OtherLedgerCardanoException: $message");
}
