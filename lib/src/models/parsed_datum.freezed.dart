// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedDatum {
  String get datumHex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String datumHex) inline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String datumHex)? inline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String datumHex)? inline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedDatumCopyWith<ParsedDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedDatumCopyWith<$Res> {
  factory $ParsedDatumCopyWith(
          ParsedDatum value, $Res Function(ParsedDatum) then) =
      _$ParsedDatumCopyWithImpl<$Res, ParsedDatum>;
  @useResult
  $Res call({String datumHex});
}

/// @nodoc
class _$ParsedDatumCopyWithImpl<$Res, $Val extends ParsedDatum>
    implements $ParsedDatumCopyWith<$Res> {
  _$ParsedDatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datumHex = null,
  }) {
    return _then(_value.copyWith(
      datumHex: null == datumHex
          ? _value.datumHex
          : datumHex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumInlineImplCopyWith<$Res>
    implements $ParsedDatumCopyWith<$Res> {
  factory _$$DatumInlineImplCopyWith(
          _$DatumInlineImpl value, $Res Function(_$DatumInlineImpl) then) =
      __$$DatumInlineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String datumHex});
}

/// @nodoc
class __$$DatumInlineImplCopyWithImpl<$Res>
    extends _$ParsedDatumCopyWithImpl<$Res, _$DatumInlineImpl>
    implements _$$DatumInlineImplCopyWith<$Res> {
  __$$DatumInlineImplCopyWithImpl(
      _$DatumInlineImpl _value, $Res Function(_$DatumInlineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? datumHex = null,
  }) {
    return _then(_$DatumInlineImpl(
      datumHex: null == datumHex
          ? _value.datumHex
          : datumHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DatumInlineImpl extends DatumInline {
  _$DatumInlineImpl({required this.datumHex}) : super._();

  @override
  final String datumHex;

  @override
  String toString() {
    return 'ParsedDatum.inline(datumHex: $datumHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumInlineImpl &&
            (identical(other.datumHex, datumHex) ||
                other.datumHex == datumHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, datumHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumInlineImplCopyWith<_$DatumInlineImpl> get copyWith =>
      __$$DatumInlineImplCopyWithImpl<_$DatumInlineImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String datumHex) inline,
  }) {
    return inline(datumHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String datumHex)? inline,
  }) {
    return inline?.call(datumHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String datumHex)? inline,
    required TResult orElse(),
  }) {
    if (inline != null) {
      return inline(datumHex);
    }
    return orElse();
  }
}

abstract class DatumInline extends ParsedDatum {
  factory DatumInline({required final String datumHex}) = _$DatumInlineImpl;
  DatumInline._() : super._();

  @override
  String get datumHex;
  @override
  @JsonKey(ignore: true)
  _$$DatumInlineImplCopyWith<_$DatumInlineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
