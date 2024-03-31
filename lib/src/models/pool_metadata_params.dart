import 'package:freezed_annotation/freezed_annotation.dart';

part 'pool_metadata_params.freezed.dart';

@freezed
sealed class PoolMetadataParams with _$PoolMetadataParams {
  const PoolMetadataParams._();

  const factory PoolMetadataParams({
    required String metadataUrl,
    required String metadataHashHex,
  }) = _PoolMetadataParams;
}