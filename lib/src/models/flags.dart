import 'package:freezed_annotation/freezed_annotation.dart';

part 'flags.freezed.dart';

@freezed
sealed class Flags with _$Flags {
  const Flags._();

  const factory Flags({
    required bool isDebug,
    required bool isAppXS,
  }) = _Flags;
}
