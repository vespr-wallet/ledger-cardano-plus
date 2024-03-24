// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tx_auxiliary_data_supplement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TxAuxiliaryDataSupplement {
  String get auxiliaryDataHashHex => throw _privateConstructorUsedError;
  String get cip36VoteRegistrationSignatureHex =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String auxiliaryDataHashHex,
            String cip36VoteRegistrationSignatureHex)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String auxiliaryDataHashHex,
            String cip36VoteRegistrationSignatureHex)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String auxiliaryDataHashHex,
            String cip36VoteRegistrationSignatureHex)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TxAuxiliaryDataSupplementCopyWith<TxAuxiliaryDataSupplement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxAuxiliaryDataSupplementCopyWith<$Res> {
  factory $TxAuxiliaryDataSupplementCopyWith(TxAuxiliaryDataSupplement value,
          $Res Function(TxAuxiliaryDataSupplement) then) =
      _$TxAuxiliaryDataSupplementCopyWithImpl<$Res, TxAuxiliaryDataSupplement>;
  @useResult
  $Res call(
      {String auxiliaryDataHashHex, String cip36VoteRegistrationSignatureHex});
}

/// @nodoc
class _$TxAuxiliaryDataSupplementCopyWithImpl<$Res,
        $Val extends TxAuxiliaryDataSupplement>
    implements $TxAuxiliaryDataSupplementCopyWith<$Res> {
  _$TxAuxiliaryDataSupplementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auxiliaryDataHashHex = null,
    Object? cip36VoteRegistrationSignatureHex = null,
  }) {
    return _then(_value.copyWith(
      auxiliaryDataHashHex: null == auxiliaryDataHashHex
          ? _value.auxiliaryDataHashHex
          : auxiliaryDataHashHex // ignore: cast_nullable_to_non_nullable
              as String,
      cip36VoteRegistrationSignatureHex: null ==
              cip36VoteRegistrationSignatureHex
          ? _value.cip36VoteRegistrationSignatureHex
          : cip36VoteRegistrationSignatureHex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TxAuxiliaryDataSupplementDataImplCopyWith<$Res>
    implements $TxAuxiliaryDataSupplementCopyWith<$Res> {
  factory _$$TxAuxiliaryDataSupplementDataImplCopyWith(
          _$TxAuxiliaryDataSupplementDataImpl value,
          $Res Function(_$TxAuxiliaryDataSupplementDataImpl) then) =
      __$$TxAuxiliaryDataSupplementDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String auxiliaryDataHashHex, String cip36VoteRegistrationSignatureHex});
}

/// @nodoc
class __$$TxAuxiliaryDataSupplementDataImplCopyWithImpl<$Res>
    extends _$TxAuxiliaryDataSupplementCopyWithImpl<$Res,
        _$TxAuxiliaryDataSupplementDataImpl>
    implements _$$TxAuxiliaryDataSupplementDataImplCopyWith<$Res> {
  __$$TxAuxiliaryDataSupplementDataImplCopyWithImpl(
      _$TxAuxiliaryDataSupplementDataImpl _value,
      $Res Function(_$TxAuxiliaryDataSupplementDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auxiliaryDataHashHex = null,
    Object? cip36VoteRegistrationSignatureHex = null,
  }) {
    return _then(_$TxAuxiliaryDataSupplementDataImpl(
      auxiliaryDataHashHex: null == auxiliaryDataHashHex
          ? _value.auxiliaryDataHashHex
          : auxiliaryDataHashHex // ignore: cast_nullable_to_non_nullable
              as String,
      cip36VoteRegistrationSignatureHex: null ==
              cip36VoteRegistrationSignatureHex
          ? _value.cip36VoteRegistrationSignatureHex
          : cip36VoteRegistrationSignatureHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TxAuxiliaryDataSupplementDataImpl
    extends _TxAuxiliaryDataSupplementData {
  _$TxAuxiliaryDataSupplementDataImpl(
      {required this.auxiliaryDataHashHex,
      required this.cip36VoteRegistrationSignatureHex})
      : super._();

  @override
  final String auxiliaryDataHashHex;
  @override
  final String cip36VoteRegistrationSignatureHex;

  @override
  String toString() {
    return 'TxAuxiliaryDataSupplement(auxiliaryDataHashHex: $auxiliaryDataHashHex, cip36VoteRegistrationSignatureHex: $cip36VoteRegistrationSignatureHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxAuxiliaryDataSupplementDataImpl &&
            (identical(other.auxiliaryDataHashHex, auxiliaryDataHashHex) ||
                other.auxiliaryDataHashHex == auxiliaryDataHashHex) &&
            (identical(other.cip36VoteRegistrationSignatureHex,
                    cip36VoteRegistrationSignatureHex) ||
                other.cip36VoteRegistrationSignatureHex ==
                    cip36VoteRegistrationSignatureHex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, auxiliaryDataHashHex, cip36VoteRegistrationSignatureHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxAuxiliaryDataSupplementDataImplCopyWith<
          _$TxAuxiliaryDataSupplementDataImpl>
      get copyWith => __$$TxAuxiliaryDataSupplementDataImplCopyWithImpl<
          _$TxAuxiliaryDataSupplementDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String auxiliaryDataHashHex,
            String cip36VoteRegistrationSignatureHex)
        $default,
  ) {
    return $default(auxiliaryDataHashHex, cip36VoteRegistrationSignatureHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String auxiliaryDataHashHex,
            String cip36VoteRegistrationSignatureHex)?
        $default,
  ) {
    return $default?.call(
        auxiliaryDataHashHex, cip36VoteRegistrationSignatureHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String auxiliaryDataHashHex,
            String cip36VoteRegistrationSignatureHex)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(auxiliaryDataHashHex, cip36VoteRegistrationSignatureHex);
    }
    return orElse();
  }
}

abstract class _TxAuxiliaryDataSupplementData
    extends TxAuxiliaryDataSupplement {
  factory _TxAuxiliaryDataSupplementData(
          {required final String auxiliaryDataHashHex,
          required final String cip36VoteRegistrationSignatureHex}) =
      _$TxAuxiliaryDataSupplementDataImpl;
  _TxAuxiliaryDataSupplementData._() : super._();

  @override
  String get auxiliaryDataHashHex;
  @override
  String get cip36VoteRegistrationSignatureHex;
  @override
  @JsonKey(ignore: true)
  _$$TxAuxiliaryDataSupplementDataImplCopyWith<
          _$TxAuxiliaryDataSupplementDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
