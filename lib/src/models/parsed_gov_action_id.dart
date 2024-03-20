import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_gov_action_id.freezed.dart';

@freezed
sealed class ParsedGovActionId with _$ParsedGovActionId {
  ParsedGovActionId._();

  factory ParsedGovActionId({
    required String txHashHex,
    required int govActionIndex,
  }) = _ParsedGovActionId;
}
