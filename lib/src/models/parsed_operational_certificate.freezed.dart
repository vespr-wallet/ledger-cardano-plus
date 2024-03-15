// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parsed_operational_certificate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ParsedOperationalCertificate {
  String get kesPublicKeyHex => throw _privateConstructorUsedError;
  String get kesPeriod => throw _privateConstructorUsedError;
  String get issueCounter => throw _privateConstructorUsedError;
  List<int> get coldKeyPath => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String kesPublicKeyHex, String kesPeriod,
            String issueCounter, List<int> coldKeyPath)
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String kesPublicKeyHex, String kesPeriod,
            String issueCounter, List<int> coldKeyPath)?
        $default,
  ) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String kesPublicKeyHex, String kesPeriod,
            String issueCounter, List<int> coldKeyPath)?
        $default, {
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParsedOperationalCertificateCopyWith<ParsedOperationalCertificate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParsedOperationalCertificateCopyWith<$Res> {
  factory $ParsedOperationalCertificateCopyWith(
          ParsedOperationalCertificate value,
          $Res Function(ParsedOperationalCertificate) then) =
      _$ParsedOperationalCertificateCopyWithImpl<$Res,
          ParsedOperationalCertificate>;
  @useResult
  $Res call(
      {String kesPublicKeyHex,
      String kesPeriod,
      String issueCounter,
      List<int> coldKeyPath});
}

/// @nodoc
class _$ParsedOperationalCertificateCopyWithImpl<$Res,
        $Val extends ParsedOperationalCertificate>
    implements $ParsedOperationalCertificateCopyWith<$Res> {
  _$ParsedOperationalCertificateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kesPublicKeyHex = null,
    Object? kesPeriod = null,
    Object? issueCounter = null,
    Object? coldKeyPath = null,
  }) {
    return _then(_value.copyWith(
      kesPublicKeyHex: null == kesPublicKeyHex
          ? _value.kesPublicKeyHex
          : kesPublicKeyHex // ignore: cast_nullable_to_non_nullable
              as String,
      kesPeriod: null == kesPeriod
          ? _value.kesPeriod
          : kesPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      issueCounter: null == issueCounter
          ? _value.issueCounter
          : issueCounter // ignore: cast_nullable_to_non_nullable
              as String,
      coldKeyPath: null == coldKeyPath
          ? _value.coldKeyPath
          : coldKeyPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParsedOperationalCertificateDataImplCopyWith<$Res>
    implements $ParsedOperationalCertificateCopyWith<$Res> {
  factory _$$ParsedOperationalCertificateDataImplCopyWith(
          _$ParsedOperationalCertificateDataImpl value,
          $Res Function(_$ParsedOperationalCertificateDataImpl) then) =
      __$$ParsedOperationalCertificateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String kesPublicKeyHex,
      String kesPeriod,
      String issueCounter,
      List<int> coldKeyPath});
}

/// @nodoc
class __$$ParsedOperationalCertificateDataImplCopyWithImpl<$Res>
    extends _$ParsedOperationalCertificateCopyWithImpl<$Res,
        _$ParsedOperationalCertificateDataImpl>
    implements _$$ParsedOperationalCertificateDataImplCopyWith<$Res> {
  __$$ParsedOperationalCertificateDataImplCopyWithImpl(
      _$ParsedOperationalCertificateDataImpl _value,
      $Res Function(_$ParsedOperationalCertificateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kesPublicKeyHex = null,
    Object? kesPeriod = null,
    Object? issueCounter = null,
    Object? coldKeyPath = null,
  }) {
    return _then(_$ParsedOperationalCertificateDataImpl(
      kesPublicKeyHex: null == kesPublicKeyHex
          ? _value.kesPublicKeyHex
          : kesPublicKeyHex // ignore: cast_nullable_to_non_nullable
              as String,
      kesPeriod: null == kesPeriod
          ? _value.kesPeriod
          : kesPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      issueCounter: null == issueCounter
          ? _value.issueCounter
          : issueCounter // ignore: cast_nullable_to_non_nullable
              as String,
      coldKeyPath: null == coldKeyPath
          ? _value._coldKeyPath
          : coldKeyPath // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$ParsedOperationalCertificateDataImpl
    extends ParsedOperationalCertificateData {
  _$ParsedOperationalCertificateDataImpl(
      {required this.kesPublicKeyHex,
      required this.kesPeriod,
      required this.issueCounter,
      required final List<int> coldKeyPath})
      : _coldKeyPath = coldKeyPath,
        super._();

  @override
  final String kesPublicKeyHex;
  @override
  final String kesPeriod;
  @override
  final String issueCounter;
  final List<int> _coldKeyPath;
  @override
  List<int> get coldKeyPath {
    if (_coldKeyPath is EqualUnmodifiableListView) return _coldKeyPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coldKeyPath);
  }

  @override
  String toString() {
    return 'ParsedOperationalCertificate(kesPublicKeyHex: $kesPublicKeyHex, kesPeriod: $kesPeriod, issueCounter: $issueCounter, coldKeyPath: $coldKeyPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParsedOperationalCertificateDataImpl &&
            (identical(other.kesPublicKeyHex, kesPublicKeyHex) ||
                other.kesPublicKeyHex == kesPublicKeyHex) &&
            (identical(other.kesPeriod, kesPeriod) ||
                other.kesPeriod == kesPeriod) &&
            (identical(other.issueCounter, issueCounter) ||
                other.issueCounter == issueCounter) &&
            const DeepCollectionEquality()
                .equals(other._coldKeyPath, _coldKeyPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kesPublicKeyHex, kesPeriod,
      issueCounter, const DeepCollectionEquality().hash(_coldKeyPath));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParsedOperationalCertificateDataImplCopyWith<
          _$ParsedOperationalCertificateDataImpl>
      get copyWith => __$$ParsedOperationalCertificateDataImplCopyWithImpl<
          _$ParsedOperationalCertificateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String kesPublicKeyHex, String kesPeriod,
            String issueCounter, List<int> coldKeyPath)
        $default,
  ) {
    return $default(kesPublicKeyHex, kesPeriod, issueCounter, coldKeyPath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String kesPublicKeyHex, String kesPeriod,
            String issueCounter, List<int> coldKeyPath)?
        $default,
  ) {
    return $default?.call(
        kesPublicKeyHex, kesPeriod, issueCounter, coldKeyPath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String kesPublicKeyHex, String kesPeriod,
            String issueCounter, List<int> coldKeyPath)?
        $default, {
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(kesPublicKeyHex, kesPeriod, issueCounter, coldKeyPath);
    }
    return orElse();
  }
}

abstract class ParsedOperationalCertificateData
    extends ParsedOperationalCertificate {
  factory ParsedOperationalCertificateData(
          {required final String kesPublicKeyHex,
          required final String kesPeriod,
          required final String issueCounter,
          required final List<int> coldKeyPath}) =
      _$ParsedOperationalCertificateDataImpl;
  ParsedOperationalCertificateData._() : super._();

  @override
  String get kesPublicKeyHex;
  @override
  String get kesPeriod;
  @override
  String get issueCounter;
  @override
  List<int> get coldKeyPath;
  @override
  @JsonKey(ignore: true)
  _$$ParsedOperationalCertificateDataImplCopyWith<
          _$ParsedOperationalCertificateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
