import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/models/tx_auxiliary_data_supplement.dart';
import 'package:ledger_cardano/src/models/witness.dart';
import 'package:ledger_cardano/src/utils/utilities.dart';

part 'signed_transaction_data.freezed.dart';

@freezed
sealed class SignedTransactionData with _$SignedTransactionData {
  SignedTransactionData._() {
    validateHexString(txHashHex, 'txHashHex');
  }

  factory SignedTransactionData({
    required String txHashHex,
    required List<Witness> witnesses,
    TxAuxiliaryDataSupplement? auxiliaryDataSupplement,
  }) = _SignedTransactionData;
}
