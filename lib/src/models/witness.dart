import 'package:freezed_annotation/freezed_annotation.dart';

part 'witness.freezed.dart';

@freezed
sealed class Witness with _$Witness {
  const Witness._();

  factory Witness({
    required List<int> path,
    required String witnessSignatureHex,
  }) = _Witness;
}
