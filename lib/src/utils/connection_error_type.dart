const int LEDGER_ERROR_CODE_MALFORMED_REQUEST_HEADER = 28161;
const int LEDGER_ERROR_CODE_DEVICE_REJECTED = 28169;
const int LEDGER_ERROR_CODE_DEVICE_REJECTED_BY_POLICY = 28176;

// TODO maybe not needed
enum LedgerConnectionErrorType {
  connectionLost,
  genericError,
  deviceRejected,
  deviceRejectedByPolicy,
  deviceMismatch,
}