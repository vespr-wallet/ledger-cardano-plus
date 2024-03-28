import 'package:freezed_annotation/freezed_annotation.dart';

part 'network.freezed.dart';

@freezed
class Network with _$Network {
  const factory Network({
    required int protocolMagic,
    required int networkId,
  }) = _Network;
}