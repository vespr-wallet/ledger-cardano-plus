import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano_plus/src/utils/constants.dart';
import 'package:ledger_cardano_plus/src/utils/utilities.dart';

part 'tx_auxiliary_data_supplement.freezed.dart';

@freezed
sealed class TxAuxiliaryDataSupplement with _$TxAuxiliaryDataSupplement {
  TxAuxiliaryDataSupplement._() {
    validateHexString(auxiliaryDataHashHex, 'auxiliaryDataHashHex');
    validateHexString(cip36VoteRegistrationSignatureHex, 'cip36VoteRegistrationSignatureHex');
  }

  factory TxAuxiliaryDataSupplement({
    required String auxiliaryDataHashHex,
    required String cip36VoteRegistrationSignatureHex,
  }) = _TxAuxiliaryDataSupplementData;

  late final TxAuxiliaryDataSupplementType type = switch (this) {
    _TxAuxiliaryDataSupplementData() => TxAuxiliaryDataSupplementType.cip36Registration,
  };
}
