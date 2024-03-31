import 'package:freezed_annotation/freezed_annotation.dart';

part 'anchor_params.freezed.dart';

@freezed
sealed class AnchorParams with _$AnchorParams {
  const AnchorParams._();

  const factory AnchorParams({
    required String url,
    required String hashHex,
  }) = _AnchorParams;
}