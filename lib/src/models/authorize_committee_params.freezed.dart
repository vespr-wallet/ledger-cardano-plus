// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorize_committee_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthorizeCommitteeParams {
  CredentialParams get coldCredential => throw _privateConstructorUsedError;
  CredentialParams get hotCredential => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            CredentialParams coldCredential, CredentialParams hotCredential)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            CredentialParams coldCredential, CredentialParams hotCredential)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            CredentialParams coldCredential, CredentialParams hotCredential)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorizeCommitteeParamsCopyWith<AuthorizeCommitteeParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorizeCommitteeParamsCopyWith<$Res> {
  factory $AuthorizeCommitteeParamsCopyWith(AuthorizeCommitteeParams value,
          $Res Function(AuthorizeCommitteeParams) then) =
      _$AuthorizeCommitteeParamsCopyWithImpl<$Res, AuthorizeCommitteeParams>;
  @useResult
  $Res call({CredentialParams coldCredential, CredentialParams hotCredential});

  $CredentialParamsCopyWith<$Res> get coldCredential;
  $CredentialParamsCopyWith<$Res> get hotCredential;
}

/// @nodoc
class _$AuthorizeCommitteeParamsCopyWithImpl<$Res,
        $Val extends AuthorizeCommitteeParams>
    implements $AuthorizeCommitteeParamsCopyWith<$Res> {
  _$AuthorizeCommitteeParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coldCredential = null,
    Object? hotCredential = null,
  }) {
    return _then(_value.copyWith(
      coldCredential: null == coldCredential
          ? _value.coldCredential
          : coldCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      hotCredential: null == hotCredential
          ? _value.hotCredential
          : hotCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
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
  $CredentialParamsCopyWith<$Res> get hotCredential {
    return $CredentialParamsCopyWith<$Res>(_value.hotCredential, (value) {
      return _then(_value.copyWith(hotCredential: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthorizeCommitteeParamsImplCopyWith<$Res>
    implements $AuthorizeCommitteeParamsCopyWith<$Res> {
  factory _$$AuthorizeCommitteeParamsImplCopyWith(
          _$AuthorizeCommitteeParamsImpl value,
          $Res Function(_$AuthorizeCommitteeParamsImpl) then) =
      __$$AuthorizeCommitteeParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CredentialParams coldCredential, CredentialParams hotCredential});

  @override
  $CredentialParamsCopyWith<$Res> get coldCredential;
  @override
  $CredentialParamsCopyWith<$Res> get hotCredential;
}

/// @nodoc
class __$$AuthorizeCommitteeParamsImplCopyWithImpl<$Res>
    extends _$AuthorizeCommitteeParamsCopyWithImpl<$Res,
        _$AuthorizeCommitteeParamsImpl>
    implements _$$AuthorizeCommitteeParamsImplCopyWith<$Res> {
  __$$AuthorizeCommitteeParamsImplCopyWithImpl(
      _$AuthorizeCommitteeParamsImpl _value,
      $Res Function(_$AuthorizeCommitteeParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coldCredential = null,
    Object? hotCredential = null,
  }) {
    return _then(_$AuthorizeCommitteeParamsImpl(
      coldCredential: null == coldCredential
          ? _value.coldCredential
          : coldCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
      hotCredential: null == hotCredential
          ? _value.hotCredential
          : hotCredential // ignore: cast_nullable_to_non_nullable
              as CredentialParams,
    ));
  }
}

/// @nodoc

class _$AuthorizeCommitteeParamsImpl extends _AuthorizeCommitteeParams {
  const _$AuthorizeCommitteeParamsImpl(
      {required this.coldCredential, required this.hotCredential})
      : super._();

  @override
  final CredentialParams coldCredential;
  @override
  final CredentialParams hotCredential;

  @override
  String toString() {
    return 'AuthorizeCommitteeParams(coldCredential: $coldCredential, hotCredential: $hotCredential)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizeCommitteeParamsImpl &&
            (identical(other.coldCredential, coldCredential) ||
                other.coldCredential == coldCredential) &&
            (identical(other.hotCredential, hotCredential) ||
                other.hotCredential == hotCredential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coldCredential, hotCredential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizeCommitteeParamsImplCopyWith<_$AuthorizeCommitteeParamsImpl>
      get copyWith => __$$AuthorizeCommitteeParamsImplCopyWithImpl<
          _$AuthorizeCommitteeParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            CredentialParams coldCredential, CredentialParams hotCredential)
        $default,
  ) {
    return $default(coldCredential, hotCredential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            CredentialParams coldCredential, CredentialParams hotCredential)?
        $default,
  ) {
    return $default?.call(coldCredential, hotCredential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            CredentialParams coldCredential, CredentialParams hotCredential)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(coldCredential, hotCredential);
    }
    return orElse();
  }
}

abstract class _AuthorizeCommitteeParams extends AuthorizeCommitteeParams {
  const factory _AuthorizeCommitteeParams(
          {required final CredentialParams coldCredential,
          required final CredentialParams hotCredential}) =
      _$AuthorizeCommitteeParamsImpl;
  const _AuthorizeCommitteeParams._() : super._();

  @override
  CredentialParams get coldCredential;
  @override
  CredentialParams get hotCredential;
  @override
  @JsonKey(ignore: true)
  _$$AuthorizeCommitteeParamsImplCopyWith<_$AuthorizeCommitteeParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
