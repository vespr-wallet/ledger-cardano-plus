// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_asset_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedAssetGroup {
  String get policyIdHex => throw _privateConstructorUsedError;
  List<ParsedToken<String>> get tokens => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String policyIdHex, List<ParsedToken<String>> tokens)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String policyIdHex, List<ParsedToken<String>> tokens)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String policyIdHex, List<ParsedToken<String>> tokens)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedAssetGroupCopyWith<ParsedAssetGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedAssetGroupCopyWith<$Res> {
  factory $ParsedAssetGroupCopyWith(
          ParsedAssetGroup value, $Res Function(ParsedAssetGroup) then) =
      _$ParsedAssetGroupCopyWithImpl<$Res, ParsedAssetGroup>;
  @useResult
  $Res call({String policyIdHex, List<ParsedToken<String>> tokens});
}

/// @nodoc
class _$ParsedAssetGroupCopyWithImpl<$Res, $Val extends ParsedAssetGroup>
    implements $ParsedAssetGroupCopyWith<$Res> {
  _$ParsedAssetGroupCopyWithImpl(this._value, this._then);

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
              as List<ParsedToken<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParsedAssetGroupImplCopyWith<$Res>
    implements $ParsedAssetGroupCopyWith<$Res> {
  factory _$$ParsedAssetGroupImplCopyWith(_$ParsedAssetGroupImpl value,
          $Res Function(_$ParsedAssetGroupImpl) then) =
      __$$ParsedAssetGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String policyIdHex, List<ParsedToken<String>> tokens});
}

/// @nodoc
class __$$ParsedAssetGroupImplCopyWithImpl<$Res>
    extends _$ParsedAssetGroupCopyWithImpl<$Res, _$ParsedAssetGroupImpl>
    implements _$$ParsedAssetGroupImplCopyWith<$Res> {
  __$$ParsedAssetGroupImplCopyWithImpl(_$ParsedAssetGroupImpl _value,
      $Res Function(_$ParsedAssetGroupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policyIdHex = null,
    Object? tokens = null,
  }) {
    return _then(_$ParsedAssetGroupImpl(
      policyIdHex: null == policyIdHex
          ? _value.policyIdHex
          : policyIdHex // ignore: cast_nullable_to_non_nullable
              as String,
      tokens: null == tokens
          ? _value._tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<ParsedToken<String>>,
    ));
  }
}

/// @nodoc

class _$ParsedAssetGroupImpl extends _ParsedAssetGroup {
  _$ParsedAssetGroupImpl(
      {required this.policyIdHex,
      required final List<ParsedToken<String>> tokens})
      : _tokens = tokens,
        super._();

  @override
  final String policyIdHex;
  final List<ParsedToken<String>> _tokens;
  @override
  List<ParsedToken<String>> get tokens {
    if (_tokens is EqualUnmodifiableListView) return _tokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokens);
  }

  @override
  String toString() {
    return 'ParsedAssetGroup(policyIdHex: $policyIdHex, tokens: $tokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedAssetGroupImpl &&
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
  _$$ParsedAssetGroupImplCopyWith<_$ParsedAssetGroupImpl> get copyWith =>
      __$$ParsedAssetGroupImplCopyWithImpl<_$ParsedAssetGroupImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String policyIdHex, List<ParsedToken<String>> tokens)
        $default,
  ) {
    return $default(policyIdHex, tokens);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String policyIdHex, List<ParsedToken<String>> tokens)?
        $default,
  ) {
    return $default?.call(policyIdHex, tokens);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String policyIdHex, List<ParsedToken<String>> tokens)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(policyIdHex, tokens);
    }
    return orElse();
  }
}

abstract class _ParsedAssetGroup extends ParsedAssetGroup {
  factory _ParsedAssetGroup(
          {required final String policyIdHex,
          required final List<ParsedToken<String>> tokens}) =
      _$ParsedAssetGroupImpl;
  _ParsedAssetGroup._() : super._();

  @override
  String get policyIdHex;
  @override
  List<ParsedToken<String>> get tokens;
  @override
  @JsonKey(ignore: true)
  _$$ParsedAssetGroupImplCopyWith<_$ParsedAssetGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
