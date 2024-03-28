// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'third_party_address_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ThirdPartyAddressParams {
  String get addressHex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String addressHex) $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String addressHex)? $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String addressHex)? $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThirdPartyAddressParamsCopyWith<ThirdPartyAddressParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThirdPartyAddressParamsCopyWith<$Res> {
  factory $ThirdPartyAddressParamsCopyWith(ThirdPartyAddressParams value,
          $Res Function(ThirdPartyAddressParams) then) =
      _$ThirdPartyAddressParamsCopyWithImpl<$Res, ThirdPartyAddressParams>;
  @useResult
  $Res call({String addressHex});
}

/// @nodoc
class _$ThirdPartyAddressParamsCopyWithImpl<$Res,
        $Val extends ThirdPartyAddressParams>
    implements $ThirdPartyAddressParamsCopyWith<$Res> {
  _$ThirdPartyAddressParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressHex = null,
  }) {
    return _then(_value.copyWith(
      addressHex: null == addressHex
          ? _value.addressHex
          : addressHex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThirdPartyAddressParamsImplCopyWith<$Res>
    implements $ThirdPartyAddressParamsCopyWith<$Res> {
  factory _$$ThirdPartyAddressParamsImplCopyWith(
          _$ThirdPartyAddressParamsImpl value,
          $Res Function(_$ThirdPartyAddressParamsImpl) then) =
      __$$ThirdPartyAddressParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String addressHex});
}

/// @nodoc
class __$$ThirdPartyAddressParamsImplCopyWithImpl<$Res>
    extends _$ThirdPartyAddressParamsCopyWithImpl<$Res,
        _$ThirdPartyAddressParamsImpl>
    implements _$$ThirdPartyAddressParamsImplCopyWith<$Res> {
  __$$ThirdPartyAddressParamsImplCopyWithImpl(
      _$ThirdPartyAddressParamsImpl _value,
      $Res Function(_$ThirdPartyAddressParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressHex = null,
  }) {
    return _then(_$ThirdPartyAddressParamsImpl(
      addressHex: null == addressHex
          ? _value.addressHex
          : addressHex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ThirdPartyAddressParamsImpl extends _ThirdPartyAddressParams {
  _$ThirdPartyAddressParamsImpl({required this.addressHex}) : super._();

  @override
  final String addressHex;

  @override
  String toString() {
    return 'ThirdPartyAddressParams(addressHex: $addressHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThirdPartyAddressParamsImpl &&
            (identical(other.addressHex, addressHex) ||
                other.addressHex == addressHex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThirdPartyAddressParamsImplCopyWith<_$ThirdPartyAddressParamsImpl>
      get copyWith => __$$ThirdPartyAddressParamsImplCopyWithImpl<
          _$ThirdPartyAddressParamsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String addressHex) $default,
  ) {
    return $default(addressHex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String addressHex)? $default,
  ) {
    return $default?.call(addressHex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String addressHex)? $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(addressHex);
    }
    return orElse();
  }
}

abstract class _ThirdPartyAddressParams extends ThirdPartyAddressParams {
  factory _ThirdPartyAddressParams({required final String addressHex}) =
      _$ThirdPartyAddressParamsImpl;
  _ThirdPartyAddressParams._() : super._();

  @override
  String get addressHex;
  @override
  @JsonKey(ignore: true)
  _$$ThirdPartyAddressParamsImplCopyWith<_$ThirdPartyAddressParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
