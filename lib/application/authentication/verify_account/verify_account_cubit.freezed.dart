// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verify_account_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerifyAccountStateTearOff {
  const _$VerifyAccountStateTearOff();

  _VerifyAccountState call(
      {required Uri uri,
      dynamic isLoading = false,
      Either<Failure, Unit> requestSucceedOrFailed = const Right(unit)}) {
    return _VerifyAccountState(
      uri: uri,
      isLoading: isLoading,
      requestSucceedOrFailed: requestSucceedOrFailed,
    );
  }
}

/// @nodoc
const $VerifyAccountState = _$VerifyAccountStateTearOff();

/// @nodoc
mixin _$VerifyAccountState {
  Uri get uri => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;
  Either<Failure, Unit> get requestSucceedOrFailed =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyAccountStateCopyWith<VerifyAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyAccountStateCopyWith<$Res> {
  factory $VerifyAccountStateCopyWith(
          VerifyAccountState value, $Res Function(VerifyAccountState) then) =
      _$VerifyAccountStateCopyWithImpl<$Res>;
  $Res call(
      {Uri uri,
      dynamic isLoading,
      Either<Failure, Unit> requestSucceedOrFailed});
}

/// @nodoc
class _$VerifyAccountStateCopyWithImpl<$Res>
    implements $VerifyAccountStateCopyWith<$Res> {
  _$VerifyAccountStateCopyWithImpl(this._value, this._then);

  final VerifyAccountState _value;
  // ignore: unused_field
  final $Res Function(VerifyAccountState) _then;

  @override
  $Res call({
    Object? uri = freezed,
    Object? isLoading = freezed,
    Object? requestSucceedOrFailed = freezed,
  }) {
    return _then(_value.copyWith(
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      requestSucceedOrFailed: requestSucceedOrFailed == freezed
          ? _value.requestSucceedOrFailed
          : requestSucceedOrFailed // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Unit>,
    ));
  }
}

/// @nodoc
abstract class _$VerifyAccountStateCopyWith<$Res>
    implements $VerifyAccountStateCopyWith<$Res> {
  factory _$VerifyAccountStateCopyWith(
          _VerifyAccountState value, $Res Function(_VerifyAccountState) then) =
      __$VerifyAccountStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Uri uri,
      dynamic isLoading,
      Either<Failure, Unit> requestSucceedOrFailed});
}

/// @nodoc
class __$VerifyAccountStateCopyWithImpl<$Res>
    extends _$VerifyAccountStateCopyWithImpl<$Res>
    implements _$VerifyAccountStateCopyWith<$Res> {
  __$VerifyAccountStateCopyWithImpl(
      _VerifyAccountState _value, $Res Function(_VerifyAccountState) _then)
      : super(_value, (v) => _then(v as _VerifyAccountState));

  @override
  _VerifyAccountState get _value => super._value as _VerifyAccountState;

  @override
  $Res call({
    Object? uri = freezed,
    Object? isLoading = freezed,
    Object? requestSucceedOrFailed = freezed,
  }) {
    return _then(_VerifyAccountState(
      uri: uri == freezed
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      requestSucceedOrFailed: requestSucceedOrFailed == freezed
          ? _value.requestSucceedOrFailed
          : requestSucceedOrFailed // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Unit>,
    ));
  }
}

/// @nodoc

class _$_VerifyAccountState implements _VerifyAccountState {
  const _$_VerifyAccountState(
      {required this.uri,
      this.isLoading = false,
      this.requestSucceedOrFailed = const Right(unit)});

  @override
  final Uri uri;
  @JsonKey()
  @override
  final dynamic isLoading;
  @JsonKey()
  @override
  final Either<Failure, Unit> requestSucceedOrFailed;

  @override
  String toString() {
    return 'VerifyAccountState(uri: $uri, isLoading: $isLoading, requestSucceedOrFailed: $requestSucceedOrFailed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyAccountState &&
            const DeepCollectionEquality().equals(other.uri, uri) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.requestSucceedOrFailed, requestSucceedOrFailed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uri),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(requestSucceedOrFailed));

  @JsonKey(ignore: true)
  @override
  _$VerifyAccountStateCopyWith<_VerifyAccountState> get copyWith =>
      __$VerifyAccountStateCopyWithImpl<_VerifyAccountState>(this, _$identity);
}

abstract class _VerifyAccountState implements VerifyAccountState {
  const factory _VerifyAccountState(
      {required Uri uri,
      dynamic isLoading,
      Either<Failure, Unit> requestSucceedOrFailed}) = _$_VerifyAccountState;

  @override
  Uri get uri;
  @override
  dynamic get isLoading;
  @override
  Either<Failure, Unit> get requestSucceedOrFailed;
  @override
  @JsonKey(ignore: true)
  _$VerifyAccountStateCopyWith<_VerifyAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
