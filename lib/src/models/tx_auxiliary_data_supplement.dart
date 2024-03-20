import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'tx_auxiliary_data_supplement.freezed.dart';

@freezed
class TxAuxiliaryDataSupplement with _$TxAuxiliaryDataSupplement {
  const TxAuxiliaryDataSupplement._();
  
  const factory TxAuxiliaryDataSupplement({
    required TxAuxiliaryDataSupplementType type,
    required String auxiliaryDataHashHex,
    required String cip36VoteRegistrationSignatureHex,
  }) = TxAuxiliaryDataSupplementData;
}