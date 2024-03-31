import 'package:freezed_annotation/freezed_annotation.dart';

part 'witness.freezed.dart';

@freezed
sealed class Witness with _$Witness {
  const Witness._();

  const factory Witness({
    required List<int> path,
    required String witnessSignatureHex,
  }) = _Witness;
}
