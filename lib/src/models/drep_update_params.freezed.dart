// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drep_update_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DRepUpdateParams {
  CredentialParams get dRepCredential => throw _privateConstructorUsedError;
  AnchorParams? get anchor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams dRepCredential, AnchorParams? anchor)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams dRepCredential, AnchorParams? anchor)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams dRepCredential, AnchorParams? anchor)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DRepUpdateParamsCopyWith<DRepUpdateParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DRepUpdateParamsCopyWith<$Res> {
  factory $DRepUpdateParamsCopyWith(
          DRepUpdateParams value, $Res Function(DRepUpdateParams) then) =
      _$DRepUpdateParamsCopyWithImpl<$Res, DRepUpdateParams>;
  @useResult
  $Res call({CredentialParams dRepCredential, AnchorParams? anchor});

  $CredentialParamsCopyWith<$Res> get dRepCredential;
  $AnchorParamsCopyWith<$Res>? get anchor;
}

/// @nodoc
class _$DRepUpdateParamsCopyWithImpl<$Res, $Val extends DRepUpdateParams>
    implements $DRepUpdateParamsCopyWith<$Res> {
  _$DRepUpdateParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dRepCredential = null,
    Object? anchor = freezed,
  }) {
    return _then(_value.copyWith(
      dRepCredential: null == dRepCredential
          ? _value.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
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
abstract class _$$DRepUpdateParamsImplCopyWith<$Res>
    implements $DRepUpdateParamsCopyWith<$Res> {
  factory _$$DRepUpdateParamsImplCopyWith(_$DRepUpdateParamsImpl value,
          $Res Function(_$DRepUpdateParamsImpl) then) =
      __$$DRepUpdateParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CredentialParams dRepCredential, AnchorParams? anchor});

  @override
  $CredentialParamsCopyWith<$Res> get dRepCredential;
  @override
  $AnchorParamsCopyWith<$Res>? get anchor;
}

/// @nodoc
class __$$DRepUpdateParamsImplCopyWithImpl<$Res>
    extends _$DRepUpdateParamsCopyWithImpl<$Res, _$DRepUpdateParamsImpl>
    implements _$$DRepUpdateParamsImplCopyWith<$Res> {
  __$$DRepUpdateParamsImplCopyWithImpl(_$DRepUpdateParamsImpl _value,
      $Res Function(_$DRepUpdateParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dRepCredential = null,
    Object? anchor = freezed,
  }) {
    return _then(_$DRepUpdateParamsImpl(
      dRepCredential: null == dRepCredential
          ? _value.dRepCredential
          : dRepCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as AnchorParams?,
    ));
  }
}

/// @nodoc

class _$DRepUpdateParamsImpl extends _DRepUpdateParams {
  const _$DRepUpdateParamsImpl({required this.dRepCredential, this.anchor})
      : super._();

  @override
  final CredentialParams dRepCredential;
  @override
  final AnchorParams? anchor;

  @override
  String toString() {
    return 'DRepUpdateParams(dRepCredential: $dRepCredential, anchor: $anchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DRepUpdateParamsImpl &&
            (identical(other.dRepCredential, dRepCredential) ||
                other.dRepCredential == dRepCredential) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dRepCredential, anchor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DRepUpdateParamsImplCopyWith<_$DRepUpdateParamsImpl> get copyWith =>
      __$$DRepUpdateParamsImplCopyWithImpl<_$DRepUpdateParamsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams dRepCredential, AnchorParams? anchor)
        $default,
  ) {
    return $default(dRepCredential, anchor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams dRepCredential, AnchorParams? anchor)?
        $default,
  ) {
    return $default?.call(dRepCredential, anchor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams dRepCredential, AnchorParams? anchor)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(dRepCredential, anchor);
    }
    return orElse();
  }
}

abstract class _DRepUpdateParams extends DRepUpdateParams {
  const factory _DRepUpdateParams(
      {required final CredentialParams dRepCredential,
      final AnchorParams? anchor}) = _$DRepUpdateParamsImpl;
  const _DRepUpdateParams._() : super._();

  @override
  CredentialParams get dRepCredential;
  @override
  AnchorParams? get anchor;
  @override
  @JsonKey(ignore: true)
  _$$DRepUpdateParamsImplCopyWith<_$DRepUpdateParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
