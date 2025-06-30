import "package:freezed_annotation/freezed_annotation.dart";
import "../utils/constants.dart";
import "../utils/utilities.dart";

part "tx_auxiliary_data_supplement.freezed.dart";

@freezed
sealed class TxAuxiliaryDataSupplement with _$TxAuxiliaryDataSupplement {

  factory TxAuxiliaryDataSupplement({
    required String auxiliaryDataHashHex,
    required String cip36VoteRegistrationSignatureHex,
  }) = _TxAuxiliaryDataSupplementData;
  TxAuxiliaryDataSupplement._() {
    validateHexString(auxiliaryDataHashHex, "auxiliaryDataHashHex");
    validateHexString(
        cip36VoteRegistrationSignatureHex, "cip36VoteRegistrationSignatureHex");
  }

  @override
  late final TxAuxiliaryDataSupplementType type = switch (this) {
    _TxAuxiliaryDataSupplementData() =>
      TxAuxiliaryDataSupplementType.cip36Registration,
  };
}
