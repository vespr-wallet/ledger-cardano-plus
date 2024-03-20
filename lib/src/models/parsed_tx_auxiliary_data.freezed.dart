// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_tx_auxiliary_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedTxAuxiliaryData {
  TxAuxiliaryDataType get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxAuxiliaryDataType type, String hashHex)
        arbitraryHash,
    required TResult Function(
            TxAuxiliaryDataType type, ParsedCVoteRegistrationParams params)
        cip36Registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxAuxiliaryDataType type, String hashHex)? arbitraryHash,
    TResult? Function(
            TxAuxiliaryDataType type, ParsedCVoteRegistrationParams params)?
        cip36Registration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxAuxiliaryDataType type, String hashHex)? arbitraryHash,
    TResult Function(
            TxAuxiliaryDataType type, ParsedCVoteRegistrationParams params)?
        cip36Registration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedTxAuxiliaryDataCopyWith<ParsedTxAuxiliaryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedTxAuxiliaryDataCopyWith<$Res> {
  factory $ParsedTxAuxiliaryDataCopyWith(ParsedTxAuxiliaryData value,
          $Res Function(ParsedTxAuxiliaryData) then) =
      _$ParsedTxAuxiliaryDataCopyWithImpl<$Res, ParsedTxAuxiliaryData>;
  @useResult
  $Res call({TxAuxiliaryDataType type});
}

/// @nodoc
class _$ParsedTxAuxiliaryDataCopyWithImpl<$Res,
        $Val extends ParsedTxAuxiliaryData>
    implements $ParsedTxAuxiliaryDataCopyWith<$Res> {
  _$ParsedTxAuxiliaryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TxAuxiliaryDataType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArbitraryHashImplCopyWith<$Res>
    implements $ParsedTxAuxiliaryDataCopyWith<$Res> {
  factory _$$ArbitraryHashImplCopyWith(
          _$ArbitraryHashImpl value, $Res Function(_$ArbitraryHashImpl) then) =
      __$$ArbitraryHashImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TxAuxiliaryDataType type, String hashHex});
}

/// @nodoc
class __$$ArbitraryHashImplCopyWithImpl<$Res>
    extends _$ParsedTxAuxiliaryDataCopyWithImpl<$Res, _$ArbitraryHashImpl>
    implements _$$ArbitraryHashImplCopyWith<$Res> {
  __$$ArbitraryHashImplCopyWithImpl(
      _$ArbitraryHashImpl _value, $Res Function(_$ArbitraryHashImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? hashHex = null,
  }) {
    return _then(_$ArbitraryHashImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TxAuxiliaryDataType,
      hashHex: null == hashHex
          ? _value.hashHex
          : hashHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ArbitraryHashImpl extends ArbitraryHash {
  const _$ArbitraryHashImpl({required this.type, required this.hashHex})
      : super._();

  @override
  final TxAuxiliaryDataType type;
  @override
  final String hashHex;

  @override
  String toString() {
    return 'ParsedTxAuxiliaryData.arbitraryHash(type: $type, hashHex: $hashHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArbitraryHashImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.hashHex, hashHex) || other.hashHex == hashHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, hashHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArbitraryHashImplCopyWith<_$ArbitraryHashImpl> get copyWith =>
      __$$ArbitraryHashImplCopyWithImpl<_$ArbitraryHashImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxAuxiliaryDataType type, String hashHex)
        arbitraryHash,
    required TResult Function(
            TxAuxiliaryDataType type, ParsedCVoteRegistrationParams params)
        cip36Registration,
  }) {
    return arbitraryHash(type, hashHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxAuxiliaryDataType type, String hashHex)? arbitraryHash,
    TResult? Function(
            TxAuxiliaryDataType type, ParsedCVoteRegistrationParams params)?
        cip36Registration,
  }) {
    return arbitraryHash?.call(type, hashHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxAuxiliaryDataType type, String hashHex)? arbitraryHash,
    TResult Function(
            TxAuxiliaryDataType type, ParsedCVoteRegistrationParams params)?
        cip36Registration,
    required TResult orElse(),
  }) {
    if (arbitraryHash != null) {
      return arbitraryHash(type, hashHex);
    }
    return orElse();
  }
}

abstract class ArbitraryHash extends ParsedTxAuxiliaryData {
  const factory ArbitraryHash(
      {required final TxAuxiliaryDataType type,
      required final String hashHex}) = _$ArbitraryHashImpl;
  const ArbitraryHash._() : super._();

  @override
  TxAuxiliaryDataType get type;
  String get hashHex;
  @override
  @JsonKey(ignore: true)
  _$$ArbitraryHashImplCopyWith<_$ArbitraryHashImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CIP36RegistrationImplCopyWith<$Res>
    implements $ParsedTxAuxiliaryDataCopyWith<$Res> {
  factory _$$CIP36RegistrationImplCopyWith(_$CIP36RegistrationImpl value,
          $Res Function(_$CIP36RegistrationImpl) then) =
      __$$CIP36RegistrationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TxAuxiliaryDataType type, ParsedCVoteRegistrationParams params});

  $ParsedCVoteRegistrationParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$CIP36RegistrationImplCopyWithImpl<$Res>
    extends _$ParsedTxAuxiliaryDataCopyWithImpl<$Res, _$CIP36RegistrationImpl>
    implements _$$CIP36RegistrationImplCopyWith<$Res> {
  __$$CIP36RegistrationImplCopyWithImpl(_$CIP36RegistrationImpl _value,
      $Res Function(_$CIP36RegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? params = null,
  }) {
    return _then(_$CIP36RegistrationImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TxAuxiliaryDataType,
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ParsedCVoteRegistrationParams,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCVoteRegistrationParamsCopyWith<$Res> get params {
    return $ParsedCVoteRegistrationParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc

class _$CIP36RegistrationImpl extends CIP36Registration {
  const _$CIP36RegistrationImpl({required this.type, required this.params})
      : super._();

  @override
  final TxAuxiliaryDataType type;
  @override
  final ParsedCVoteRegistrationParams params;

  @override
  String toString() {
    return 'ParsedTxAuxiliaryData.cip36Registration(type: $type, params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CIP36RegistrationImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CIP36RegistrationImplCopyWith<_$CIP36RegistrationImpl> get copyWith =>
      __$$CIP36RegistrationImplCopyWithImpl<_$CIP36RegistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TxAuxiliaryDataType type, String hashHex)
        arbitraryHash,
    required TResult Function(
            TxAuxiliaryDataType type, ParsedCVoteRegistrationParams params)
        cip36Registration,
  }) {
    return cip36Registration(type, params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TxAuxiliaryDataType type, String hashHex)? arbitraryHash,
    TResult? Function(
            TxAuxiliaryDataType type, ParsedCVoteRegistrationParams params)?
        cip36Registration,
  }) {
    return cip36Registration?.call(type, params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TxAuxiliaryDataType type, String hashHex)? arbitraryHash,
    TResult Function(
            TxAuxiliaryDataType type, ParsedCVoteRegistrationParams params)?
        cip36Registration,
    required TResult orElse(),
  }) {
    if (cip36Registration != null) {
      return cip36Registration(type, params);
    }
    return orElse();
  }
}

abstract class CIP36Registration extends ParsedTxAuxiliaryData {
  const factory CIP36Registration(
          {required final TxAuxiliaryDataType type,
          required final ParsedCVoteRegistrationParams params}) =
      _$CIP36RegistrationImpl;
  const CIP36Registration._() : super._();

  @override
  TxAuxiliaryDataType get type;
  ParsedCVoteRegistrationParams get params;
  @override
  @JsonKey(ignore: true)
  _$$CIP36RegistrationImplCopyWith<_$CIP36RegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}