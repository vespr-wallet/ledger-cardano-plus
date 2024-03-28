import 'package:freezed_annotation/freezed_annotation.dart';

part 'datum.freezed.dart';

enum DatumType { hash, inline }

@freezed
sealed class Datum with _$Datum {
  Datum._();

  factory Datum.hash({
    required String datumHashHex,
  }) = DatumHash;

  factory Datum.inline({
    required String datumHex,
  }) = DatumInline;

  late final DatumType type = switch (this) {
    DatumHash() => DatumType.hash,
    DatumInline() => DatumType.inline,
  };
}

