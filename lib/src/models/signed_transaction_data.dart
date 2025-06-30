import "package:freezed_annotation/freezed_annotation.dart";

import "../utils/utilities.dart";
import "tx_auxiliary_data_supplement.dart";
import "witness.dart";

part "signed_transaction_data.freezed.dart";

@freezed
sealed class SignedTransactionData with _$SignedTransactionData {

  factory SignedTransactionData({
    required String txHashHex,
    required List<Witness> witnesses,
    required TxAuxiliaryDataSupplement? auxiliaryDataSupplement,
  }) = _SignedTransactionData;
  SignedTransactionData._() {
    validateHexString(txHashHex, "txHashHex");
  }
}
