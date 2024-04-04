// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_params_byron.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddressParamsByron {
  List<int> get spendingPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressParamsByronCopyWith<AddressParamsByron> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressParamsByronCopyWith<$Res> {
  factory $AddressParamsByronCopyWith(
          AddressParamsByron value, $Res Function(AddressParamsByron) then) =
      _$AddressParamsByronCopyWithImpl<$Res, AddressParamsByron>;
  @useResult
  $Res call({List<int> spendingPath});
}

/// @nodoc
class _$AddressParamsByronCopyWithImpl<$Res, $Val extends AddressParamsByron>
    implements $AddressParamsByronCopyWith<$Res> {
  _$AddressParamsByronCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spendingPath = null,
  }) {
    return _then(_value.copyWith(
      spendingPath: null == spendingPath
          ? _value.spendingPath
          : spendingPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressParamsByronImplCopyWith<$Res>
    implements $AddressParamsByronCopyWith<$Res> {
  factory _$$AddressParamsByronImplCopyWith(_$AddressParamsByronImpl value,
          $Res Function(_$AddressParamsByronImpl) then) =
      __$$AddressParamsByronImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> spendingPath});
}

/// @nodoc
class __$$AddressParamsByronImplCopyWithImpl<$Res>
    extends _$AddressParamsByronCopyWithImpl<$Res, _$AddressParamsByronImpl>
    implements _$$AddressParamsByronImplCopyWith<$Res> {
  __$$AddressParamsByronImplCopyWithImpl(_$AddressParamsByronImpl _value,
      $Res Function(_$AddressParamsByronImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spendingPath = null,
  }) {
    return _then(_$AddressParamsByronImpl(
      spendingPath: null == spendingPath
          ? _value._spendingPath
          : spendingPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$AddressParamsByronImpl extends _AddressParamsByron {
  _$AddressParamsByronImpl({required final List<int> spendingPath})
      : _spendingPath = spendingPath,
        super._();

  final List<int> _spendingPath;
  @override
  List<int> get spendingPath {
    if (_spendingPath is EqualUnmodifiableListView) return _spendingPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spendingPath);
  }

  @override
  String toString() {
    return 'AddressParamsByron(spendingPath: $spendingPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressParamsByronImpl &&
            const DeepCollectionEquality()
                .equals(other._spendingPath, _spendingPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_spendingPath));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressParamsByronImplCopyWith<_$AddressParamsByronImpl> get copyWith =>
      __$$AddressParamsByronImplCopyWithImpl<_$AddressParamsByronImpl>(
          this, _$identity);
}

abstract class _AddressParamsByron extends AddressParamsByron {
  factory _AddressParamsByron({required final List<int> spendingPath}) =
      _$AddressParamsByronImpl;
  _AddressParamsByron._() : super._();

  @override
  List<int> get spendingPath;
  @override
  @JsonKey(ignore: true)
  _$$AddressParamsByronImplCopyWith<_$AddressParamsByronImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
