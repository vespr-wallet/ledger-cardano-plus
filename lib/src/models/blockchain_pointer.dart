import 'package:freezed_annotation/freezed_annotation.dart';

part 'blockchain_pointer.freezed.dart';

@freezed
sealed class BlockchainPointer with _$BlockchainPointer {
  BlockchainPointer._();

  factory BlockchainPointer({
    required int blockIndex,
    required int txIndex,
    required int certificateIndex,
  }) = _BlockchainPointer;
}
