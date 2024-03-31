// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssetGroup {
  String get policyIdHex => throw _privateConstructorUsedError;
  List<Token> get tokens => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String policyIdHex, List<Token> tokens) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String policyIdHex, List<Token> tokens)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String policyIdHex, List<Token> tokens)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssetGroupCopyWith<AssetGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetGroupCopyWith<$Res> {
  factory $AssetGroupCopyWith(
          AssetGroup value, $Res Function(AssetGroup) then) =
      _$AssetGroupCopyWithImpl<$Res, AssetGroup>;
  @useResult
  $Res call({String policyIdHex, List<Token> tokens});
}

/// @nodoc
class _$AssetGroupCopyWithImpl<$Res, $Val extends AssetGroup>
    implements $AssetGroupCopyWith<$Res> {
  _$AssetGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policyIdHex = null,
    Object? tokens = null,
  }) {
    return _then(_value.copyWith(
      policyIdHex: null == policyIdHex
          ? _value.policyIdHex
          : policyIdHex // ignore: cast_nullable_to_non_nullable
              as String,
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<Token>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssetGroupImplCopyWith<$Res>
    implements $AssetGroupCopyWith<$Res> {
  factory _$$AssetGroupImplCopyWith(
          _$AssetGroupImpl value, $Res Function(_$AssetGroupImpl) then) =
      __$$AssetGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String policyIdHex, List<Token> tokens});
}

/// @nodoc
class __$$AssetGroupImplCopyWithImpl<$Res>
    extends _$AssetGroupCopyWithImpl<$Res, _$AssetGroupImpl>
    implements _$$AssetGroupImplCopyWith<$Res> {
  __$$AssetGroupImplCopyWithImpl(
      _$AssetGroupImpl _value, $Res Function(_$AssetGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policyIdHex = null,
    Object? tokens = null,
  }) {
    return _then(_$AssetGroupImpl(
      policyIdHex: null == policyIdHex
          ? _value.policyIdHex
          : policyIdHex // ignore: cast_nullable_to_non_nullable
              as String,
      tokens: null == tokens
          ? _value._tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<Token>,
    ));
  }
}

/// @nodoc

class _$AssetGroupImpl extends _AssetGroup {
  const _$AssetGroupImpl(
      {required this.policyIdHex, required final List<Token> tokens})
      : _tokens = tokens,
        super._();

  @override
  final String policyIdHex;
  final List<Token> _tokens;
  @override
  List<Token> get tokens {
    if (_tokens is EqualUnmodifiableListView) return _tokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokens);
  }

  @override
  String toString() {
    return 'AssetGroup(policyIdHex: $policyIdHex, tokens: $tokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetGroupImpl &&
            (identical(other.policyIdHex, policyIdHex) ||
                other.policyIdHex == policyIdHex) &&
            const DeepCollectionEquality().equals(other._tokens, _tokens));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, policyIdHex, const DeepCollectionEquality().hash(_tokens));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetGroupImplCopyWith<_$AssetGroupImpl> get copyWith =>
      __$$AssetGroupImplCopyWithImpl<_$AssetGroupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String policyIdHex, List<Token> tokens) $default,
  ) {
    return $default(policyIdHex, tokens);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String policyIdHex, List<Token> tokens)? $default,
  ) {
    return $default?.call(policyIdHex, tokens);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String policyIdHex, List<Token> tokens)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(policyIdHex, tokens);
    }
    return orElse();
  }
}

abstract class _AssetGroup extends AssetGroup {
  const factory _AssetGroup(
      {required final String policyIdHex,
      required final List<Token> tokens}) = _$AssetGroupImpl;
  const _AssetGroup._() : super._();

  @override
  String get policyIdHex;
  @override
  List<Token> get tokens;
  @override
  @JsonKey(ignore: true)
  _$$AssetGroupImplCopyWith<_$AssetGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
