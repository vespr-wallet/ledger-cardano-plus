// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'witness.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Witness {
  List<int> get path => throw _privateConstructorUsedError;
  String get witnessSignatureHex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<int> path, String witnessSignatureHex) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<int> path, String witnessSignatureHex)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<int> path, String witnessSignatureHex)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WitnessCopyWith<Witness> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WitnessCopyWith<$Res> {
  factory $WitnessCopyWith(Witness value, $Res Function(Witness) then) =
      _$WitnessCopyWithImpl<$Res, Witness>;
  @useResult
  $Res call({List<int> path, String witnessSignatureHex});
}

/// @nodoc
class _$WitnessCopyWithImpl<$Res, $Val extends Witness>
    implements $WitnessCopyWith<$Res> {
  _$WitnessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? witnessSignatureHex = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
      witnessSignatureHex: null == witnessSignatureHex
          ? _value.witnessSignatureHex
          : witnessSignatureHex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WitnessImplCopyWith<$Res> implements $WitnessCopyWith<$Res> {
  factory _$$WitnessImplCopyWith(
          _$WitnessImpl value, $Res Function(_$WitnessImpl) then) =
      __$$WitnessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> path, String witnessSignatureHex});
}

/// @nodoc
class __$$WitnessImplCopyWithImpl<$Res>
    extends _$WitnessCopyWithImpl<$Res, _$WitnessImpl>
    implements _$$WitnessImplCopyWith<$Res> {
  __$$WitnessImplCopyWithImpl(
      _$WitnessImpl _value, $Res Function(_$WitnessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? witnessSignatureHex = null,
  }) {
    return _then(_$WitnessImpl(
      path: null == path
          ? _value._path
          : path // ignore: cast_nullable_to_non_nullable
              as List<int>,
      witnessSignatureHex: null == witnessSignatureHex
          ? _value.witnessSignatureHex
          : witnessSignatureHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WitnessImpl extends _Witness {
  const _$WitnessImpl(
      {required final List<int> path, required this.witnessSignatureHex})
      : _path = path,
        super._();

  final List<int> _path;
  @override
  List<int> get path {
    if (_path is EqualUnmodifiableListView) return _path;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_path);
  }

  @override
  final String witnessSignatureHex;

  @override
  String toString() {
    return 'Witness(path: $path, witnessSignatureHex: $witnessSignatureHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WitnessImpl &&
            const DeepCollectionEquality().equals(other._path, _path) &&
            (identical(other.witnessSignatureHex, witnessSignatureHex) ||
                other.witnessSignatureHex == witnessSignatureHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_path), witnessSignatureHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WitnessImplCopyWith<_$WitnessImpl> get copyWith =>
      __$$WitnessImplCopyWithImpl<_$WitnessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<int> path, String witnessSignatureHex) $default,
  ) {
    return $default(path, witnessSignatureHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<int> path, String witnessSignatureHex)? $default,
  ) {
    return $default?.call(path, witnessSignatureHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<int> path, String witnessSignatureHex)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(path, witnessSignatureHex);
    }
    return orElse();
  }
}

abstract class _Witness extends Witness {
  const factory _Witness(
      {required final List<int> path,
      required final String witnessSignatureHex}) = _$WitnessImpl;
  const _Witness._() : super._();

  @override
  List<int> get path;
  @override
  String get witnessSignatureHex;
  @override
  @JsonKey(ignore: true)
  _$$WitnessImplCopyWith<_$WitnessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
