import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ledger_cardano/src/utils/constants.dart';
import 'package:ledger_cardano/src/utils/validation_exception.dart';

part 'cvote_public_key.freezed.dart';


@freezed
class CVotePublicKey with _$CVotePublicKey {
  const CVotePublicKey._();

  const factory CVotePublicKey({
    required String value,
  }) = CVotePublicKeyData;

  bool get isValid => value.length == cvotePublicKeyLength * 2;

  factory CVotePublicKey.validate({required String value}) {
    if (value.length != cvotePublicKeyLength * 2) {
      throw ValidationException('CVotePublicKey must be a $cvotePublicKeyLength-byte hex string.');
    }
    return CVotePublicKey(value: value);
  }
}