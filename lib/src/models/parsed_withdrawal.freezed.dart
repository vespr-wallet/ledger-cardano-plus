// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_withdrawal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedWithdrawal {
  String get amount => throw _privateConstructorUsedError;
  ParsedCredential get stakeCredential => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String amount, ParsedCredential stakeCredential) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String amount, ParsedCredential stakeCredential)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String amount, ParsedCredential stakeCredential)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedWithdrawalCopyWith<ParsedWithdrawal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedWithdrawalCopyWith<$Res> {
  factory $ParsedWithdrawalCopyWith(
          ParsedWithdrawal value, $Res Function(ParsedWithdrawal) then) =
      _$ParsedWithdrawalCopyWithImpl<$Res, ParsedWithdrawal>;
  @useResult
  $Res call({String amount, ParsedCredential stakeCredential});

  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class _$ParsedWithdrawalCopyWithImpl<$Res, $Val extends ParsedWithdrawal>
    implements $ParsedWithdrawalCopyWith<$Res> {
  _$ParsedWithdrawalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? stakeCredential = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParsedCredentialCopyWith<$Res> get stakeCredential {
    return $ParsedCredentialCopyWith<$Res>(_value.stakeCredential, (value) {
      return _then(_value.copyWith(stakeCredential: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParsedWithdrawalDataImplCopyWith<$Res>
    implements $ParsedWithdrawalCopyWith<$Res> {
  factory _$$ParsedWithdrawalDataImplCopyWith(_$ParsedWithdrawalDataImpl value,
          $Res Function(_$ParsedWithdrawalDataImpl) then) =
      __$$ParsedWithdrawalDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String amount, ParsedCredential stakeCredential});

  @override
  $ParsedCredentialCopyWith<$Res> get stakeCredential;
}

/// @nodoc
class __$$ParsedWithdrawalDataImplCopyWithImpl<$Res>
    extends _$ParsedWithdrawalCopyWithImpl<$Res, _$ParsedWithdrawalDataImpl>
    implements _$$ParsedWithdrawalDataImplCopyWith<$Res> {
  __$$ParsedWithdrawalDataImplCopyWithImpl(_$ParsedWithdrawalDataImpl _value,
      $Res Function(_$ParsedWithdrawalDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? stakeCredential = null,
  }) {
    return _then(_$ParsedWithdrawalDataImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      stakeCredential: null == stakeCredential
          ? _value.stakeCredential
          : stakeCredential // ignore: cast_nullable_to_non_nullable
              as ParsedCredential,
    ));
  }
}

/// @nodoc

class _$ParsedWithdrawalDataImpl extends ParsedWithdrawalData {
  const _$ParsedWithdrawalDataImpl(
      {required this.amount, required this.stakeCredential})
      : super._();

  @override
  final String amount;
  @override
  final ParsedCredential stakeCredential;

  @override
  String toString() {
    return 'ParsedWithdrawal(amount: $amount, stakeCredential: $stakeCredential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedWithdrawalDataImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.stakeCredential, stakeCredential) ||
                other.stakeCredential == stakeCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount, stakeCredential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedWithdrawalDataImplCopyWith<_$ParsedWithdrawalDataImpl>
      get copyWith =>
          __$$ParsedWithdrawalDataImplCopyWithImpl<_$ParsedWithdrawalDataImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String amount, ParsedCredential stakeCredential) $default,
  ) {
    return $default(amount, stakeCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String amount, ParsedCredential stakeCredential)?
        $default,
  ) {
    return $default?.call(amount, stakeCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String amount, ParsedCredential stakeCredential)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(amount, stakeCredential);
    }
    return orElse();
  }
}

abstract class ParsedWithdrawalData extends ParsedWithdrawal {
  const factory ParsedWithdrawalData(
          {required final String amount,
          required final ParsedCredential stakeCredential}) =
      _$ParsedWithdrawalDataImpl;
  const ParsedWithdrawalData._() : super._();

  @override
  String get amount;
  @override
  ParsedCredential get stakeCredential;
  @override
  @JsonKey(ignore: true)
  _$$ParsedWithdrawalDataImplCopyWith<_$ParsedWithdrawalDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
