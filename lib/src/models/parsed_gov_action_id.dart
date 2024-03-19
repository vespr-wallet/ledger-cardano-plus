import 'package:freezed_annotation/freezed_annotation.dart';

part 'parsed_gov_action_id.freezed.dart';

@freezed
class ParsedGovActionId with _$ParsedGovActionId {
  const ParsedGovActionId._();

  const factory ParsedGovActionId({
    required String txHashHex,
    required int govActionIndex,
  }) = ParsedGovActionIdData;

}

