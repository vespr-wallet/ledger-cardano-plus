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
  LedgerSigningPath get path => throw _privateConstructorUsedError;
  String get witnessSignatureHex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WitnessCopyWith<Witness> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WitnessCopyWith<$Res> {
  factory $WitnessCopyWith(Witness value, $Res Function(Witness) then) =
      _$WitnessCopyWithImpl<$Res, Witness>;
  @useResult
  $Res call({LedgerSigningPath path, String witnessSignatureHex});

  $LedgerSigningPathCopyWith<$Res> get path;
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
              as LedgerSigningPath,
      witnessSignatureHex: null == witnessSignatureHex
          ? _value.witnessSignatureHex
          : witnessSignatureHex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LedgerSigningPathCopyWith<$Res> get path {
    return $LedgerSigningPathCopyWith<$Res>(_value.path, (value) {
      return _then(_value.copyWith(path: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WitnessImplCopyWith<$Res> implements $WitnessCopyWith<$Res> {
  factory _$$WitnessImplCopyWith(
          _$WitnessImpl value, $Res Function(_$WitnessImpl) then) =
      __$$WitnessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LedgerSigningPath path, String witnessSignatureHex});

  @override
  $LedgerSigningPathCopyWith<$Res> get path;
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
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as LedgerSigningPath,
      witnessSignatureHex: null == witnessSignatureHex
          ? _value.witnessSignatureHex
          : witnessSignatureHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WitnessImpl extends _Witness {
  _$WitnessImpl({required this.path, required this.witnessSignatureHex})
      : super._();

  @override
  final LedgerSigningPath path;
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
            (identical(other.path, path) || other.path == path) &&
            (identical(other.witnessSignatureHex, witnessSignatureHex) ||
                other.witnessSignatureHex == witnessSignatureHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path, witnessSignatureHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WitnessImplCopyWith<_$WitnessImpl> get copyWith =>
      __$$WitnessImplCopyWithImpl<_$WitnessImpl>(this, _$identity);
}

abstract class _Witness extends Witness {
  factory _Witness(
      {required final LedgerSigningPath path,
      required final String witnessSignatureHex}) = _$WitnessImpl;
  _Witness._() : super._();

  @override
  LedgerSigningPath get path;
  @override
  String get witnessSignatureHex;
  @override
  @JsonKey(ignore: true)
  _$$WitnessImplCopyWith<_$WitnessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
