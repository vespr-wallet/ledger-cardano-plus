import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'tx_auxiliary_data_supplement.freezed.dart';

@freezed
sealed class TxAuxiliaryDataSupplement with _$TxAuxiliaryDataSupplement {
  TxAuxiliaryDataSupplement._();

  factory TxAuxiliaryDataSupplement({
    required TxAuxiliaryDataSupplementType type,
    required String auxiliaryDataHashHex,
    required String cip36VoteRegistrationSignatureHex,
  }) = _TxAuxiliaryDataSupplementData;
}
