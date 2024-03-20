import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'cvote_public_key.freezed.dart';

@freezed
sealed class CVotePublicKey with _$CVotePublicKey {
  CVotePublicKey._() {
    if (value.length != cvotePublicKeyLength * 2) {
      throw ValidationException('CVotePublicKey must be a $cvotePublicKeyLength-byte hex string.');
    }
  }

  factory CVotePublicKey({
    required String value,
  }) = _CVotePublicKey;
}
