// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resign_committee_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ResignCommitteeParams {
  CredentialParams get coldCredential => throw _privateConstructorUsedError;
  AnchorParams? get anchor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams coldCredential, AnchorParams? anchor)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams coldCredential, AnchorParams? anchor)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams coldCredential, AnchorParams? anchor)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResignCommitteeParamsCopyWith<ResignCommitteeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResignCommitteeParamsCopyWith<$Res> {
  factory $ResignCommitteeParamsCopyWith(ResignCommitteeParams value,
          $Res Function(ResignCommitteeParams) then) =
      _$ResignCommitteeParamsCopyWithImpl<$Res, ResignCommitteeParams>;
  @useResult
  $Res call({CredentialParams coldCredential, AnchorParams? anchor});

  $CredentialParamsCopyWith<$Res> get coldCredential;
  $AnchorParamsCopyWith<$Res>? get anchor;
}

/// @nodoc
class _$ResignCommitteeParamsCopyWithImpl<$Res,
        $Val extends ResignCommitteeParams>
    implements $ResignCommitteeParamsCopyWith<$Res> {
  _$ResignCommitteeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coldCredential = null,
    Object? anchor = freezed,
  }) {
    return _then(_value.copyWith(
      coldCredential: null == coldCredential
          ? _value.coldCredential
          : coldCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as AnchorParams?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CredentialParamsCopyWith<$Res> get coldCredential {
    return $CredentialParamsCopyWith<$Res>(_value.coldCredential, (value) {
      return _then(_value.copyWith(coldCredential: value) as $Val);
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
abstract class _$$ResignCommitteeParamsImplCopyWith<$Res>
    implements $ResignCommitteeParamsCopyWith<$Res> {
  factory _$$ResignCommitteeParamsImplCopyWith(
          _$ResignCommitteeParamsImpl value,
          $Res Function(_$ResignCommitteeParamsImpl) then) =
      __$$ResignCommitteeParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CredentialParams coldCredential, AnchorParams? anchor});

  @override
  $CredentialParamsCopyWith<$Res> get coldCredential;
  @override
  $AnchorParamsCopyWith<$Res>? get anchor;
}

/// @nodoc
class __$$ResignCommitteeParamsImplCopyWithImpl<$Res>
    extends _$ResignCommitteeParamsCopyWithImpl<$Res,
        _$ResignCommitteeParamsImpl>
    implements _$$ResignCommitteeParamsImplCopyWith<$Res> {
  __$$ResignCommitteeParamsImplCopyWithImpl(_$ResignCommitteeParamsImpl _value,
      $Res Function(_$ResignCommitteeParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coldCredential = null,
    Object? anchor = freezed,
  }) {
    return _then(_$ResignCommitteeParamsImpl(
      coldCredential: null == coldCredential
          ? _value.coldCredential
          : coldCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      anchor: freezed == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as AnchorParams?,
    ));
  }
}

/// @nodoc

class _$ResignCommitteeParamsImpl extends _ResignCommitteeParams {
  const _$ResignCommitteeParamsImpl({required this.coldCredential, this.anchor})
      : super._();

  @override
  final CredentialParams coldCredential;
  @override
  final AnchorParams? anchor;

  @override
  String toString() {
    return 'ResignCommitteeParams(coldCredential: $coldCredential, anchor: $anchor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResignCommitteeParamsImpl &&
            (identical(other.coldCredential, coldCredential) ||
                other.coldCredential == coldCredential) &&
            (identical(other.anchor, anchor) || other.anchor == anchor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coldCredential, anchor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResignCommitteeParamsImplCopyWith<_$ResignCommitteeParamsImpl>
      get copyWith => __$$ResignCommitteeParamsImplCopyWithImpl<
          _$ResignCommitteeParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(CredentialParams coldCredential, AnchorParams? anchor)
        $default,
  ) {
    return $default(coldCredential, anchor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(CredentialParams coldCredential, AnchorParams? anchor)?
        $default,
  ) {
    return $default?.call(coldCredential, anchor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(CredentialParams coldCredential, AnchorParams? anchor)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(coldCredential, anchor);
    }
    return orElse();
  }
}

abstract class _ResignCommitteeParams extends ResignCommitteeParams {
  const factory _ResignCommitteeParams(
      {required final CredentialParams coldCredential,
      final AnchorParams? anchor}) = _$ResignCommitteeParamsImpl;
  const _ResignCommitteeParams._() : super._();

  @override
  CredentialParams get coldCredential;
  @override
  AnchorParams? get anchor;
  @override
  @JsonKey(ignore: true)
  _$$ResignCommitteeParamsImplCopyWith<_$ResignCommitteeParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
