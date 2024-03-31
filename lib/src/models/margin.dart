import 'package:freezed_annotation/freezed_annotation.dart';

part 'margin.freezed.dart';

@freezed
class Margin with _$Margin {
  const Margin._();

  const factory Margin({
    required BigInt numerator,
    required BigInt denominator,
  }) = _Margin;
}