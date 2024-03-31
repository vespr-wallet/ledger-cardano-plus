// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drep_registration_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DRepRegistrationParams {
  CredentialParams get dRepCredential => throw _privateConstructorUsedError;
  BigInt get deposit => throw _privateConstructorUsedError;
  AnchorParams? get anchor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams dRepCredential, BigInt deposit,
            AnchorParams? anchor)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams dRepCredential, BigInt deposit,
            AnchorParams? anchor)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams dRepCredential, BigInt deposit,
            AnchorParams? anchor)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DRepRegistrationParamsCopyWith<DRepRegistrationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DRepRegistrationParamsCopyWith<$Res> {
  factory $DRepRegistrationParamsCopyWith(DRepRegistrationParams value,
          $Res Function(DRepRegistrationParams) then) =
      _$DRepRegistrationParamsCopyWithImpl<$Res, DRepRegistrationParams>;
  @useResult
  $Res call(
      {CredentialParams dRepCredential, BigInt deposit, AnchorParams? anchor});

  $CredentialParamsCopyWith<$Res> get dRepCredential;
  $AnchorParamsCopyWith<$Res>? get anchor;
}

/// @nodoc
class _$DRepRegistrationParamsCopyWithImpl<$Res,
        $Val extends DRepRegistrationParams>
    implements $DRepRegistrationParamsCopyWith<$Res> {
  _$DRepRegistrationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dRepCredential = null,
    Object? deposit = null,
    Object? anchor = freezed,
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
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as AnchorParams?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CredentialParamsCopyWith<$Res> get dRepCredential {
    return $CredentialParamsCopyWith<$Res>(_value.dRepCredential, (value) {
      return _then(_value.copyWith(dRepCredential: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnchorParamsCopyWith<$Res>? get anchor {
    if (_value.anchor == null) {
      return null;
    }

    return $AnchorParamsCopyWith<$Res>(_value.anchor!, (value) {
      return _then(_value.copyWith(anchor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DRepRegistrationParamsImplCopyWith<$Res>
    implements $DRepRegistrationParamsCopyWith<$Res> {
  factory _$$DRepRegistrationParamsImplCopyWith(
          _$DRepRegistrationParamsImpl value,
          $Res Function(_$DRepRegistrationParamsImpl) then) =
      __$$DRepRegistrationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CredentialParams dRepCredential, BigInt deposit, AnchorParams? anchor});

  @override
  $CredentialParamsCopyWith<$Res> get dRepCredential;
  @override
  $AnchorParamsCopyWith<$Res>? get anchor;
}

/// @nodoc
class __$$DRepRegistrationParamsImplCopyWithImpl<$Res>
    extends _$DRepRegistrationParamsCopyWithImpl<$Res,
        _$DRepRegistrationParamsImpl>
    implements _$$DRepRegistrationParamsImplCopyWith<$Res> {
  __$$DRepRegistrationParamsImplCopyWithImpl(
      _$DRepRegistrationParamsImpl _value,
      $Res Function(_$DRepRegistrationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dRepCredential = null,
    Object? deposit = null,
    Object? anchor = freezed,
  }) {
    return _then(_$DRepRegistrationParamsImpl(
      dRepCredential: null == dRepCredential
          ? _value.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      deposit: null == deposit
          ? _value.deposit
          : deposit // ignore: cast_nullable_to_non_nullable
              as BigInt,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as AnchorParams?,
    ));
  }
}

/// @nodoc

class _$DRepRegistrationParamsImpl extends _DRepRegistrationParams {
  const _$DRepRegistrationParamsImpl(
      {required this.dRepCredential, required this.deposit, this.anchor})
      : super._();

  @override
  final CredentialParams dRepCredential;
  @override
  final BigInt deposit;
  @override
  final AnchorParams? anchor;

  @override
  String toString() {
    return 'DRepRegistrationParams(dRepCredential: $dRepCredential, deposit: $deposit, anchor: $anchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepRegistrationParamsImpl &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.deposit, deposit) || other.deposit == deposit) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepCredential, deposit, anchor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepRegistrationParamsImplCopyWith<_$DRepRegistrationParamsImpl>
      get copyWith => __$$DRepRegistrationParamsImplCopyWithImpl<
          _$DRepRegistrationParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams dRepCredential, BigInt deposit,
            AnchorParams? anchor)
        $default,
  ) {
    return $default(dRepCredential, deposit, anchor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams dRepCredential, BigInt deposit,
            AnchorParams? anchor)?
        $default,
  ) {
    return $default?.call(dRepCredential, deposit, anchor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams dRepCredential, BigInt deposit,
            AnchorParams? anchor)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(dRepCredential, deposit, anchor);
    }
    return orElse();
  }
}

abstract class _DRepRegistrationParams extends DRepRegistrationParams {
  const factory _DRepRegistrationParams(
      {required final CredentialParams dRepCredential,
      required final BigInt deposit,
      final AnchorParams? anchor}) = _$DRepRegistrationParamsImpl;
  const _DRepRegistrationParams._() : super._();

  @override
  CredentialParams get dRepCredential;
  @override
  BigInt get deposit;
  @override
  AnchorParams? get anchor;
  @override
  @JsonKey(ignore: true)
  _$$DRepRegistrationParamsImplCopyWith<_$DRepRegistrationParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
