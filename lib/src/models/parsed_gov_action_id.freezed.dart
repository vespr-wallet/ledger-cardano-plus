// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_gov_action_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedGovActionId {
  String get txHashHex => throw _privateConstructorUsedError;
  int get govActionIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String txHashHex, int govActionIndex) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String txHashHex, int govActionIndex)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String txHashHex, int govActionIndex)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedGovActionIdCopyWith<ParsedGovActionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedGovActionIdCopyWith<$Res> {
  factory $ParsedGovActionIdCopyWith(
          ParsedGovActionId value, $Res Function(ParsedGovActionId) then) =
      _$ParsedGovActionIdCopyWithImpl<$Res, ParsedGovActionId>;
  @useResult
  $Res call({String txHashHex, int govActionIndex});
}

/// @nodoc
class _$ParsedGovActionIdCopyWithImpl<$Res, $Val extends ParsedGovActionId>
    implements $ParsedGovActionIdCopyWith<$Res> {
  _$ParsedGovActionIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txHashHex = null,
    Object? govActionIndex = null,
  }) {
    return _then(_value.copyWith(
      txHashHex: null == txHashHex
          ? _value.txHashHex
          : txHashHex // ignore: cast_nullable_to_non_nullable
              as String,
      govActionIndex: null == govActionIndex
          ? _value.govActionIndex
          : govActionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParsedGovActionIdDataImplCopyWith<$Res>
    implements $ParsedGovActionIdCopyWith<$Res> {
  factory _$$ParsedGovActionIdDataImplCopyWith(
          _$ParsedGovActionIdDataImpl value,
          $Res Function(_$ParsedGovActionIdDataImpl) then) =
      __$$ParsedGovActionIdDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String txHashHex, int govActionIndex});
}

/// @nodoc
class __$$ParsedGovActionIdDataImplCopyWithImpl<$Res>
    extends _$ParsedGovActionIdCopyWithImpl<$Res, _$ParsedGovActionIdDataImpl>
    implements _$$ParsedGovActionIdDataImplCopyWith<$Res> {
  __$$ParsedGovActionIdDataImplCopyWithImpl(_$ParsedGovActionIdDataImpl _value,
      $Res Function(_$ParsedGovActionIdDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? txHashHex = null,
    Object? govActionIndex = null,
  }) {
    return _then(_$ParsedGovActionIdDataImpl(
      txHashHex: null == txHashHex
          ? _value.txHashHex
          : txHashHex // ignore: cast_nullable_to_non_nullable
              as String,
      govActionIndex: null == govActionIndex
          ? _value.govActionIndex
          : govActionIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ParsedGovActionIdDataImpl extends ParsedGovActionIdData {
  const _$ParsedGovActionIdDataImpl(
      {required this.txHashHex, required this.govActionIndex})
      : super._();

  @override
  final String txHashHex;
  @override
  final int govActionIndex;

  @override
  String toString() {
    return 'ParsedGovActionId(txHashHex: $txHashHex, govActionIndex: $govActionIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedGovActionIdDataImpl &&
            (identical(other.txHashHex, txHashHex) ||
                other.txHashHex == txHashHex) &&
            (identical(other.govActionIndex, govActionIndex) ||
                other.govActionIndex == govActionIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, txHashHex, govActionIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedGovActionIdDataImplCopyWith<_$ParsedGovActionIdDataImpl>
      get copyWith => __$$ParsedGovActionIdDataImplCopyWithImpl<
          _$ParsedGovActionIdDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String txHashHex, int govActionIndex) $default,
  ) {
    return $default(txHashHex, govActionIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String txHashHex, int govActionIndex)? $default,
  ) {
    return $default?.call(txHashHex, govActionIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String txHashHex, int govActionIndex)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(txHashHex, govActionIndex);
    }
    return orElse();
  }
}

abstract class ParsedGovActionIdData extends ParsedGovActionId {
  const factory ParsedGovActionIdData(
      {required final String txHashHex,
      required final int govActionIndex}) = _$ParsedGovActionIdDataImpl;
  const ParsedGovActionIdData._() : super._();

  @override
  String get txHashHex;
  @override
  int get govActionIndex;
  @override
  @JsonKey(ignore: true)
  _$$ParsedGovActionIdDataImplCopyWith<_$ParsedGovActionIdDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
