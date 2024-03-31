// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drep_deregistration_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DRepDeregistrationParams {
  CredentialParams get dRepCredential => throw _privateConstructorUsedError;
  BigInt get deposit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams dRepCredential, BigInt deposit) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams dRepCredential, BigInt deposit)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams dRepCredential, BigInt deposit)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DRepDeregistrationParamsCopyWith<DRepDeregistrationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DRepDeregistrationParamsCopyWith<$Res> {
  factory $DRepDeregistrationParamsCopyWith(DRepDeregistrationParams value,
          $Res Function(DRepDeregistrationParams) then) =
      _$DRepDeregistrationParamsCopyWithImpl<$Res, DRepDeregistrationParams>;
  @useResult
  $Res call({CredentialParams dRepCredential, BigInt deposit});

  $CredentialParamsCopyWith<$Res> get dRepCredential;
}

/// @nodoc
class _$DRepDeregistrationParamsCopyWithImpl<$Res,
        $Val extends DRepDeregistrationParams>
    implements $DRepDeregistrationParamsCopyWith<$Res> {
  _$DRepDeregistrationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dRepCredential = null,
    Object? deposit = null,
  }) {
    return _then(_value.copyWith(
      dRepCredential: null == dRepCredential
          ? _value.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CredentialParamsCopyWith<$Res> get dRepCredential {
    return $CredentialParamsCopyWith<$Res>(_value.dRepCredential, (value) {
      return _then(_value.copyWith(dRepCredential: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DRepDeregistrationParamsImplCopyWith<$Res>
    implements $DRepDeregistrationParamsCopyWith<$Res> {
  factory _$$DRepDeregistrationParamsImplCopyWith(
          _$DRepDeregistrationParamsImpl value,
          $Res Function(_$DRepDeregistrationParamsImpl) then) =
      __$$DRepDeregistrationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CredentialParams dRepCredential, BigInt deposit});

  @override
  $CredentialParamsCopyWith<$Res> get dRepCredential;
}

/// @nodoc
class __$$DRepDeregistrationParamsImplCopyWithImpl<$Res>
    extends _$DRepDeregistrationParamsCopyWithImpl<$Res,
        _$DRepDeregistrationParamsImpl>
    implements _$$DRepDeregistrationParamsImplCopyWith<$Res> {
  __$$DRepDeregistrationParamsImplCopyWithImpl(
      _$DRepDeregistrationParamsImpl _value,
      $Res Function(_$DRepDeregistrationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dRepCredential = null,
    Object? deposit = null,
  }) {
    return _then(_$DRepDeregistrationParamsImpl(
      dRepCredential: null == dRepCredential
          ? _value.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class _$DRepDeregistrationParamsImpl extends _DRepDeregistrationParams {
  const _$DRepDeregistrationParamsImpl(
      {required this.dRepCredential, required this.deposit})
      : super._();

  @override
  final CredentialParams dRepCredential;
  @override
  final BigInt deposit;

  @override
  String toString() {
    return 'DRepDeregistrationParams(dRepCredential: $dRepCredential, deposit: $deposit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepDeregistrationParamsImpl &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepCredential, deposit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepDeregistrationParamsImplCopyWith<_$DRepDeregistrationParamsImpl>
      get copyWith => __$$DRepDeregistrationParamsImplCopyWithImpl<
          _$DRepDeregistrationParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams dRepCredential, BigInt deposit) $default,
  ) {
    return $default(dRepCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams dRepCredential, BigInt deposit)?
        $default,
  ) {
    return $default?.call(dRepCredential, deposit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams dRepCredential, BigInt deposit)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(dRepCredential, deposit);
    }
    return orElse();
  }
}

abstract class _DRepDeregistrationParams extends DRepDeregistrationParams {
  const factory _DRepDeregistrationParams(
      {required final CredentialParams dRepCredential,
      required final BigInt deposit}) = _$DRepDeregistrationParamsImpl;
  const _DRepDeregistrationParams._() : super._();

  @override
  CredentialParams get dRepCredential;
  @override
  BigInt get deposit;
  @override
  @JsonKey(ignore: true)
  _$$DRepDeregistrationParamsImplCopyWith<_$DRepDeregistrationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
