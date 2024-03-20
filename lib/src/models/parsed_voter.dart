import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_voter.freezed.dart';

@freezed
class ParsedVoter with _$ParsedVoter {
  const ParsedVoter._();

  const factory ParsedVoter.committeeKeyHash({
    required String keyHashHex,
  }) = CommitteeKeyHash;

  const factory ParsedVoter.committeeKeyPath({
    required List<int> keyPath,
  }) = CommitteeKeyPath;

  const factory ParsedVoter.committeeScriptHash({
    required String scriptHashHex,
  }) = CommitteeScriptHash;

  const factory ParsedVoter.drepKeyHash({
    required String keyHashHex,
  }) = DrepKeyHash;

  const factory ParsedVoter.drepKeyPath({
    required List<int> keyPath,
  }) = DrepKeyPath;

  const factory ParsedVoter.drepScriptHash({
    required String scriptHashHex,
  }) = DrepScriptHash;

  const factory ParsedVoter.stakePoolKeyHash({
    required String keyHashHex,
  }) = StakePoolKeyHash;

  const factory ParsedVoter.stakePoolKeyPath({
    required List<int> keyPath,
  }) = StakePoolKeyPath;

}