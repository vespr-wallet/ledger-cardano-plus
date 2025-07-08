sealed class LedgerCardanoResponseCodeException implements Exception {
  late int statusCode = switch (this) {
    WrongAppOpenedException(ledgerStatusCode: final ledgerStatusCode) => ledgerStatusCode,
    // MalformedRequestHeaderException() => 0x6E01, // 0x6A81 on Soalan app ; 0x6E00 on btc and eth app
    BadClaException() => 0x6E02,
    UnknownInstructionException() => 0x6E03,
    StillInCallException() => 0x6E04,
    InvalidRequestParametersException() => 0x6E05,
    InvalidStateException() => 0x6E06,
    InvalidDataException() => 0x6E07,
    InvalidBip44PathException() => 0x6E08,
    UserRejectedException() => 0x6E09,
    PolicyRejectedException() => 0x6E10,
    DeviceLockedException() => 0x6E11,
    UnknownResponseCodeException(ledgerStatusCode: final ledgerStatusCode) => ledgerStatusCode,
  };
  final String message;

  LedgerCardanoResponseCodeException({
    required this.message,
  });

  static LedgerCardanoResponseCodeException fromLedgerStatusCode(int statusCode) => switch (statusCode) {
    // 0x6E01 => MalformedRequestHeaderException(),
    // 0x6E00 on eth/btc app
    // 0x6E01 on no app opened
    // 0x6A81 on solana app
    0x6E00 || 0x6E01 || 0x6a80 || 0x6A81 || 0x6A15 || 0x6511 => WrongAppOpenedException(ledgerStatusCode: statusCode),
    0x6E02 => BadClaException(),
    0x6E03 => UnknownInstructionException(),
    0x6E04 => StillInCallException(),
    0x6E05 => InvalidRequestParametersException(),
    0x6E06 => InvalidStateException(),
    0x6E07 => InvalidDataException(),
    0x6E08 => InvalidBip44PathException(),
    0x6E09 => UserRejectedException(),
    0x6E10 => PolicyRejectedException(),
    0x6E11 || 0x6B0C || 0x5515 => DeviceLockedException(),
    _ => UnknownResponseCodeException(ledgerStatusCode: statusCode),
  };
}

class WrongAppOpenedException extends LedgerCardanoResponseCodeException {
  final int ledgerStatusCode;
  WrongAppOpenedException({required this.ledgerStatusCode}) : super(message: "Wrong app opened on Ledger device");
}

// class MalformedRequestHeaderException extends LedgerCardanoResponseCodeException {
//   MalformedRequestHeaderException() : super(message: "Malformed request header");
// }

class BadClaException extends LedgerCardanoResponseCodeException {
  BadClaException() : super(message: "Bad CLA (Command Link Assurance)");
}

class UnknownInstructionException extends LedgerCardanoResponseCodeException {
  UnknownInstructionException() : super(message: "Unknown instruction");
}

class StillInCallException extends LedgerCardanoResponseCodeException {
  StillInCallException() : super(message: "Still in call");
}

class InvalidRequestParametersException extends LedgerCardanoResponseCodeException {
  InvalidRequestParametersException() : super(message: "Invalid request parameters");
}

class InvalidStateException extends LedgerCardanoResponseCodeException {
  InvalidStateException() : super(message: "Invalid state");
}

class InvalidDataException extends LedgerCardanoResponseCodeException {
  InvalidDataException() : super(message: "Invalid data");
}

class InvalidBip44PathException extends LedgerCardanoResponseCodeException {
  InvalidBip44PathException() : super(message: "Invalid BIP44 path");
}

class UserRejectedException extends LedgerCardanoResponseCodeException {
  UserRejectedException() : super(message: "Rejected by user");
}

class PolicyRejectedException extends LedgerCardanoResponseCodeException {
  PolicyRejectedException() : super(message: "Rejected by policy");
}

class DeviceLockedException extends LedgerCardanoResponseCodeException {
  DeviceLockedException() : super(message: "Device is locked");
}

class UnknownResponseCodeException extends LedgerCardanoResponseCodeException {
  final int ledgerStatusCode;
  UnknownResponseCodeException({required this.ledgerStatusCode}) : super(message: "Unknown error code");
}
