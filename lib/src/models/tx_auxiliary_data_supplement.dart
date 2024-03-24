import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';

part 'tx_auxiliary_data_supplement.freezed.dart';

@freezed
sealed class TxAuxiliaryDataSupplement with _$TxAuxiliaryDataSupplement {
  TxAuxiliaryDataSupplement._();

  factory TxAuxiliaryDataSupplement({
    required String auxiliaryDataHashHex,
    required String cip36VoteRegistrationSignatureHex,
  }) = _TxAuxiliaryDataSupplementData;

  late final TxAuxiliaryDataSupplementType type = switch (this) {
    _TxAuxiliaryDataSupplementData() => TxAuxiliaryDataSupplementType.cip36Registration,
  };
}
