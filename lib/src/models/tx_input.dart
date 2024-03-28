import 'package:freezed_annotation/freezed_annotation.dart';

part 'tx_input.freezed.dart';

@freezed
class TxInput with _$TxInput {
  const TxInput._();

  const factory TxInput({
    required String txHashHex,
    required int outputIndex,
    List<int>? path,
  }) = _TxInput;
}