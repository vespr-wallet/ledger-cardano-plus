// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_transaction_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedTransactionOptions {
  bool get tagCborSets => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool tagCborSets) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool tagCborSets)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool tagCborSets)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedTransactionOptionsCopyWith<ParsedTransactionOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedTransactionOptionsCopyWith<$Res> {
  factory $ParsedTransactionOptionsCopyWith(ParsedTransactionOptions value,
          $Res Function(ParsedTransactionOptions) then) =
      _$ParsedTransactionOptionsCopyWithImpl<$Res, ParsedTransactionOptions>;
  @useResult
  $Res call({bool tagCborSets});
}

/// @nodoc
class _$ParsedTransactionOptionsCopyWithImpl<$Res,
        $Val extends ParsedTransactionOptions>
    implements $ParsedTransactionOptionsCopyWith<$Res> {
  _$ParsedTransactionOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagCborSets = null,
  }) {
    return _then(_value.copyWith(
      tagCborSets: null == tagCborSets
          ? _value.tagCborSets
          : tagCborSets // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParsedTransactionOptions_dataImplCopyWith<$Res>
    implements $ParsedTransactionOptionsCopyWith<$Res> {
  factory _$$ParsedTransactionOptions_dataImplCopyWith(
          _$ParsedTransactionOptions_dataImpl value,
          $Res Function(_$ParsedTransactionOptions_dataImpl) then) =
      __$$ParsedTransactionOptions_dataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool tagCborSets});
}

/// @nodoc
class __$$ParsedTransactionOptions_dataImplCopyWithImpl<$Res>
    extends _$ParsedTransactionOptionsCopyWithImpl<$Res,
        _$ParsedTransactionOptions_dataImpl>
    implements _$$ParsedTransactionOptions_dataImplCopyWith<$Res> {
  __$$ParsedTransactionOptions_dataImplCopyWithImpl(
      _$ParsedTransactionOptions_dataImpl _value,
      $Res Function(_$ParsedTransactionOptions_dataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tagCborSets = null,
  }) {
    return _then(_$ParsedTransactionOptions_dataImpl(
      tagCborSets: null == tagCborSets
          ? _value.tagCborSets
          : tagCborSets // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ParsedTransactionOptions_dataImpl
    extends ParsedTransactionOptions_data {
  const _$ParsedTransactionOptions_dataImpl({required this.tagCborSets})
      : super._();

  @override
  final bool tagCborSets;

  @override
  String toString() {
    return 'ParsedTransactionOptions(tagCborSets: $tagCborSets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedTransactionOptions_dataImpl &&
            (identical(other.tagCborSets, tagCborSets) ||
                other.tagCborSets == tagCborSets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tagCborSets);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedTransactionOptions_dataImplCopyWith<
          _$ParsedTransactionOptions_dataImpl>
      get copyWith => __$$ParsedTransactionOptions_dataImplCopyWithImpl<
          _$ParsedTransactionOptions_dataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool tagCborSets) $default,
  ) {
    return $default(tagCborSets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool tagCborSets)? $default,
  ) {
    return $default?.call(tagCborSets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool tagCborSets)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(tagCborSets);
    }
    return orElse();
  }
}

abstract class ParsedTransactionOptions_data extends ParsedTransactionOptions {
  const factory ParsedTransactionOptions_data(
      {required final bool tagCborSets}) = _$ParsedTransactionOptions_dataImpl;
  const ParsedTransactionOptions_data._() : super._();

  @override
  bool get tagCborSets;
  @override
  @JsonKey(ignore: true)
  _$$ParsedTransactionOptions_dataImplCopyWith<
          _$ParsedTransactionOptions_dataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
