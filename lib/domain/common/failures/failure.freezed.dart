// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _NoConnection noConnection() {
    return const _NoConnection();
  }

  _ServerError serverError() {
    return const _ServerError();
  }

  _ApiError apiError({int? errorCode, String? message}) {
    return _ApiError(
      errorCode: errorCode,
      message: message,
    );
  }

  _InternalError internalError() {
    return const _InternalError();
  }

  _NotFound notFound() {
    return const _NotFound();
  }

  _Wtf wtf(String? details) {
    return _Wtf(
      details,
    );
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function(int? errorCode, String? message) apiError,
    required TResult Function() internalError,
    required TResult Function() notFound,
    required TResult Function(String? details) wtf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Wtf value) wtf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$NoConnectionCopyWith<$Res> {
  factory _$NoConnectionCopyWith(
          _NoConnection value, $Res Function(_NoConnection) then) =
      __$NoConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoConnectionCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$NoConnectionCopyWith<$Res> {
  __$NoConnectionCopyWithImpl(
      _NoConnection _value, $Res Function(_NoConnection) _then)
      : super(_value, (v) => _then(v as _NoConnection));

  @override
  _NoConnection get _value => super._value as _NoConnection;
}

/// @nodoc

class _$_NoConnection implements _NoConnection {
  const _$_NoConnection();

  @override
  String toString() {
    return 'Failure.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function(int? errorCode, String? message) apiError,
    required TResult Function() internalError,
    required TResult Function() notFound,
    required TResult Function(String? details) wtf,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Wtf value) wtf,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection implements Failure {
  const factory _NoConnection() = _$_NoConnection;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'Failure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function(int? errorCode, String? message) apiError,
    required TResult Function() internalError,
    required TResult Function() notFound,
    required TResult Function(String? details) wtf,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Wtf value) wtf,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements Failure {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$ApiErrorCopyWith<$Res> {
  factory _$ApiErrorCopyWith(_ApiError value, $Res Function(_ApiError) then) =
      __$ApiErrorCopyWithImpl<$Res>;
  $Res call({int? errorCode, String? message});
}

/// @nodoc
class __$ApiErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ApiErrorCopyWith<$Res> {
  __$ApiErrorCopyWithImpl(_ApiError _value, $Res Function(_ApiError) _then)
      : super(_value, (v) => _then(v as _ApiError));

  @override
  _ApiError get _value => super._value as _ApiError;

  @override
  $Res call({
    Object? errorCode = freezed,
    Object? message = freezed,
  }) {
    return _then(_ApiError(
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ApiError implements _ApiError {
  const _$_ApiError({this.errorCode, this.message});

  @override
  final int? errorCode;
  @override
  final String? message;

  @override
  String toString() {
    return 'Failure.apiError(errorCode: $errorCode, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ApiError &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(errorCode),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ApiErrorCopyWith<_ApiError> get copyWith =>
      __$ApiErrorCopyWithImpl<_ApiError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function(int? errorCode, String? message) apiError,
    required TResult Function() internalError,
    required TResult Function() notFound,
    required TResult Function(String? details) wtf,
  }) {
    return apiError(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
  }) {
    return apiError?.call(errorCode, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(errorCode, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Wtf value) wtf,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class _ApiError implements Failure {
  const factory _ApiError({int? errorCode, String? message}) = _$_ApiError;

  int? get errorCode;
  String? get message;
  @JsonKey(ignore: true)
  _$ApiErrorCopyWith<_ApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InternalErrorCopyWith<$Res> {
  factory _$InternalErrorCopyWith(
          _InternalError value, $Res Function(_InternalError) then) =
      __$InternalErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$InternalErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$InternalErrorCopyWith<$Res> {
  __$InternalErrorCopyWithImpl(
      _InternalError _value, $Res Function(_InternalError) _then)
      : super(_value, (v) => _then(v as _InternalError));

  @override
  _InternalError get _value => super._value as _InternalError;
}

/// @nodoc

class _$_InternalError implements _InternalError {
  const _$_InternalError();

  @override
  String toString() {
    return 'Failure.internalError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InternalError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function(int? errorCode, String? message) apiError,
    required TResult Function() internalError,
    required TResult Function() notFound,
    required TResult Function(String? details) wtf,
  }) {
    return internalError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
  }) {
    return internalError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Wtf value) wtf,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
  }) {
    return internalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class _InternalError implements Failure {
  const factory _InternalError() = _$_InternalError;
}

/// @nodoc
abstract class _$NotFoundCopyWith<$Res> {
  factory _$NotFoundCopyWith(_NotFound value, $Res Function(_NotFound) then) =
      __$NotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotFoundCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$NotFoundCopyWith<$Res> {
  __$NotFoundCopyWithImpl(_NotFound _value, $Res Function(_NotFound) _then)
      : super(_value, (v) => _then(v as _NotFound));

  @override
  _NotFound get _value => super._value as _NotFound;
}

/// @nodoc

class _$_NotFound implements _NotFound {
  const _$_NotFound();

  @override
  String toString() {
    return 'Failure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function(int? errorCode, String? message) apiError,
    required TResult Function() internalError,
    required TResult Function() notFound,
    required TResult Function(String? details) wtf,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Wtf value) wtf,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements Failure {
  const factory _NotFound() = _$_NotFound;
}

/// @nodoc
abstract class _$WtfCopyWith<$Res> {
  factory _$WtfCopyWith(_Wtf value, $Res Function(_Wtf) then) =
      __$WtfCopyWithImpl<$Res>;
  $Res call({String? details});
}

/// @nodoc
class __$WtfCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$WtfCopyWith<$Res> {
  __$WtfCopyWithImpl(_Wtf _value, $Res Function(_Wtf) _then)
      : super(_value, (v) => _then(v as _Wtf));

  @override
  _Wtf get _value => super._value as _Wtf;

  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_Wtf(
      details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Wtf implements _Wtf {
  const _$_Wtf(this.details);

  @override
  final String? details;

  @override
  String toString() {
    return 'Failure.wtf(details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Wtf &&
            const DeepCollectionEquality().equals(other.details, details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(details));

  @JsonKey(ignore: true)
  @override
  _$WtfCopyWith<_Wtf> get copyWith =>
      __$WtfCopyWithImpl<_Wtf>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() serverError,
    required TResult Function(int? errorCode, String? message) apiError,
    required TResult Function() internalError,
    required TResult Function() notFound,
    required TResult Function(String? details) wtf,
  }) {
    return wtf(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
  }) {
    return wtf?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? serverError,
    TResult Function(int? errorCode, String? message)? apiError,
    TResult Function()? internalError,
    TResult Function()? notFound,
    TResult Function(String? details)? wtf,
    required TResult orElse(),
  }) {
    if (wtf != null) {
      return wtf(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Wtf value) wtf,
  }) {
    return wtf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
  }) {
    return wtf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ApiError value)? apiError,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Wtf value)? wtf,
    required TResult orElse(),
  }) {
    if (wtf != null) {
      return wtf(this);
    }
    return orElse();
  }
}

abstract class _Wtf implements Failure {
  const factory _Wtf(String? details) = _$_Wtf;

  String? get details;
  @JsonKey(ignore: true)
  _$WtfCopyWith<_Wtf> get copyWith => throw _privateConstructorUsedError;
}
