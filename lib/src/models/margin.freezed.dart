// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'margin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Margin {
  String get numerator => throw _privateConstructorUsedError;
  String get denominator => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String numerator, String denominator) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String numerator, String denominator)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String numerator, String denominator)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarginCopyWith<Margin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarginCopyWith<$Res> {
  factory $MarginCopyWith(Margin value, $Res Function(Margin) then) =
      _$MarginCopyWithImpl<$Res, Margin>;
  @useResult
  $Res call({String numerator, String denominator});
}

/// @nodoc
class _$MarginCopyWithImpl<$Res, $Val extends Margin>
    implements $MarginCopyWith<$Res> {
  _$MarginCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numerator = null,
    Object? denominator = null,
  }) {
    return _then(_value.copyWith(
      numerator: null == numerator
          ? _value.numerator
          : numerator // ignore: cast_nullable_to_non_nullable
              as String,
      denominator: null == denominator
          ? _value.denominator
          : denominator // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarginImplCopyWith<$Res> implements $MarginCopyWith<$Res> {
  factory _$$MarginImplCopyWith(
          _$MarginImpl value, $Res Function(_$MarginImpl) then) =
      __$$MarginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String numerator, String denominator});
}

/// @nodoc
class __$$MarginImplCopyWithImpl<$Res>
    extends _$MarginCopyWithImpl<$Res, _$MarginImpl>
    implements _$$MarginImplCopyWith<$Res> {
  __$$MarginImplCopyWithImpl(
      _$MarginImpl _value, $Res Function(_$MarginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numerator = null,
    Object? denominator = null,
  }) {
    return _then(_$MarginImpl(
      numerator: null == numerator
          ? _value.numerator
          : numerator // ignore: cast_nullable_to_non_nullable
              as String,
      denominator: null == denominator
          ? _value.denominator
          : denominator // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarginImpl extends _Margin {
  const _$MarginImpl({required this.numerator, required this.denominator})
      : super._();

  @override
  final String numerator;
  @override
  final String denominator;

  @override
  String toString() {
    return 'Margin(numerator: $numerator, denominator: $denominator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarginImpl &&
            (identical(other.numerator, numerator) ||
                other.numerator == numerator) &&
            (identical(other.denominator, denominator) ||
                other.denominator == denominator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numerator, denominator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarginImplCopyWith<_$MarginImpl> get copyWith =>
      __$$MarginImplCopyWithImpl<_$MarginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String numerator, String denominator) $default,
  ) {
    return $default(numerator, denominator);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String numerator, String denominator)? $default,
  ) {
    return $default?.call(numerator, denominator);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String numerator, String denominator)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(numerator, denominator);
    }
    return orElse();
  }
}

abstract class _Margin extends Margin {
  const factory _Margin(
      {required final String numerator,
      required final String denominator}) = _$MarginImpl;
  const _Margin._() : super._();

  @override
  String get numerator;
  @override
  String get denominator;
  @override
  @JsonKey(ignore: true)
  _$$MarginImplCopyWith<_$MarginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
