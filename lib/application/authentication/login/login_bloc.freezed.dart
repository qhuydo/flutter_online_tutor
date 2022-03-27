// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  _EmailChanged emailChanged(String emailStr) {
    return _EmailChanged(
      emailStr,
    );
  }

  _PasswordChanged passwordChanged(String passwordStr) {
    return _PasswordChanged(
      passwordStr,
    );
  }

  _PhoneNumberChanged phoneNumberChanged(String phoneNumberStr) {
    return _PhoneNumberChanged(
      phoneNumberStr,
    );
  }

  _logInWithEmailAndPasswordPressed logInWithEmailAndPasswordPressed() {
    return const _logInWithEmailAndPasswordPressed();
  }

  _logInWithPhoneAndPasswordPressed logInWithPhoneAndPasswordPressed() {
    return const _logInWithPhoneAndPasswordPressed();
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithPhoneAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithPhoneAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_logInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(_logInWithPhoneAndPasswordPressed value)
        logInWithPhoneAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_logInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(_logInWithPhoneAndPasswordPressed value)?
        logInWithPhoneAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_logInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(_logInWithPhoneAndPasswordPressed value)?
        logInWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'LoginEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailChanged &&
            const DeepCollectionEquality().equals(other.emailStr, emailStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emailStr));

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithPhoneAndPasswordPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithPhoneAndPasswordPressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_logInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(_logInWithPhoneAndPasswordPressed value)
        logInWithPhoneAndPasswordPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_logInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(_logInWithPhoneAndPasswordPressed value)?
        logInWithPhoneAndPasswordPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_logInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(_logInWithPhoneAndPasswordPressed value)?
        logInWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements LoginEvent {
  const factory _EmailChanged(String emailStr) = _$_EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordStr, passwordStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordStr));

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithPhoneAndPasswordPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithPhoneAndPasswordPressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_logInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(_logInWithPhoneAndPasswordPressed value)
        logInWithPhoneAndPasswordPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_logInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(_logInWithPhoneAndPasswordPressed value)?
        logInWithPhoneAndPasswordPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_logInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(_logInWithPhoneAndPasswordPressed value)?
        logInWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements LoginEvent {
  const factory _PasswordChanged(String passwordStr) = _$_PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhoneNumberChangedCopyWith<$Res> {
  factory _$PhoneNumberChangedCopyWith(
          _PhoneNumberChanged value, $Res Function(_PhoneNumberChanged) then) =
      __$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr});
}

/// @nodoc
class __$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$PhoneNumberChangedCopyWith<$Res> {
  __$PhoneNumberChangedCopyWithImpl(
      _PhoneNumberChanged _value, $Res Function(_PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _PhoneNumberChanged));

  @override
  _PhoneNumberChanged get _value => super._value as _PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumberStr = freezed,
  }) {
    return _then(_PhoneNumberChanged(
      phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberChanged implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumberStr);

  @override
  final String phoneNumberStr;

  @override
  String toString() {
    return 'LoginEvent.phoneNumberChanged(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhoneNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.phoneNumberStr, phoneNumberStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumberStr));

  @JsonKey(ignore: true)
  @override
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      __$PhoneNumberChangedCopyWithImpl<_PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithPhoneAndPasswordPressed,
  }) {
    return phoneNumberChanged(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithPhoneAndPasswordPressed,
  }) {
    return phoneNumberChanged?.call(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_logInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(_logInWithPhoneAndPasswordPressed value)
        logInWithPhoneAndPasswordPressed,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_logInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(_logInWithPhoneAndPasswordPressed value)?
        logInWithPhoneAndPasswordPressed,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_logInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(_logInWithPhoneAndPasswordPressed value)?
        logInWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements LoginEvent {
  const factory _PhoneNumberChanged(String phoneNumberStr) =
      _$_PhoneNumberChanged;

  String get phoneNumberStr;
  @JsonKey(ignore: true)
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$logInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$logInWithEmailAndPasswordPressedCopyWith(
          _logInWithEmailAndPasswordPressed value,
          $Res Function(_logInWithEmailAndPasswordPressed) then) =
      __$logInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$logInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$logInWithEmailAndPasswordPressedCopyWith<$Res> {
  __$logInWithEmailAndPasswordPressedCopyWithImpl(
      _logInWithEmailAndPasswordPressed _value,
      $Res Function(_logInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _logInWithEmailAndPasswordPressed));

  @override
  _logInWithEmailAndPasswordPressed get _value =>
      super._value as _logInWithEmailAndPasswordPressed;
}

/// @nodoc

class _$_logInWithEmailAndPasswordPressed
    implements _logInWithEmailAndPasswordPressed {
  const _$_logInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'LoginEvent.logInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _logInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithPhoneAndPasswordPressed,
  }) {
    return logInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithPhoneAndPasswordPressed,
  }) {
    return logInWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (logInWithEmailAndPasswordPressed != null) {
      return logInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_logInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(_logInWithPhoneAndPasswordPressed value)
        logInWithPhoneAndPasswordPressed,
  }) {
    return logInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_logInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(_logInWithPhoneAndPasswordPressed value)?
        logInWithPhoneAndPasswordPressed,
  }) {
    return logInWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_logInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(_logInWithPhoneAndPasswordPressed value)?
        logInWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (logInWithEmailAndPasswordPressed != null) {
      return logInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _logInWithEmailAndPasswordPressed implements LoginEvent {
  const factory _logInWithEmailAndPasswordPressed() =
      _$_logInWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$logInWithPhoneAndPasswordPressedCopyWith<$Res> {
  factory _$logInWithPhoneAndPasswordPressedCopyWith(
          _logInWithPhoneAndPasswordPressed value,
          $Res Function(_logInWithPhoneAndPasswordPressed) then) =
      __$logInWithPhoneAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$logInWithPhoneAndPasswordPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$logInWithPhoneAndPasswordPressedCopyWith<$Res> {
  __$logInWithPhoneAndPasswordPressedCopyWithImpl(
      _logInWithPhoneAndPasswordPressed _value,
      $Res Function(_logInWithPhoneAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _logInWithPhoneAndPasswordPressed));

  @override
  _logInWithPhoneAndPasswordPressed get _value =>
      super._value as _logInWithPhoneAndPasswordPressed;
}

/// @nodoc

class _$_logInWithPhoneAndPasswordPressed
    implements _logInWithPhoneAndPasswordPressed {
  const _$_logInWithPhoneAndPasswordPressed();

  @override
  String toString() {
    return 'LoginEvent.logInWithPhoneAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _logInWithPhoneAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String phoneNumberStr) phoneNumberChanged,
    required TResult Function() logInWithEmailAndPasswordPressed,
    required TResult Function() logInWithPhoneAndPasswordPressed,
  }) {
    return logInWithPhoneAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithPhoneAndPasswordPressed,
  }) {
    return logInWithPhoneAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String phoneNumberStr)? phoneNumberChanged,
    TResult Function()? logInWithEmailAndPasswordPressed,
    TResult Function()? logInWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (logInWithPhoneAndPasswordPressed != null) {
      return logInWithPhoneAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_logInWithEmailAndPasswordPressed value)
        logInWithEmailAndPasswordPressed,
    required TResult Function(_logInWithPhoneAndPasswordPressed value)
        logInWithPhoneAndPasswordPressed,
  }) {
    return logInWithPhoneAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_logInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(_logInWithPhoneAndPasswordPressed value)?
        logInWithPhoneAndPasswordPressed,
  }) {
    return logInWithPhoneAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_logInWithEmailAndPasswordPressed value)?
        logInWithEmailAndPasswordPressed,
    TResult Function(_logInWithPhoneAndPasswordPressed value)?
        logInWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (logInWithPhoneAndPasswordPressed != null) {
      return logInWithPhoneAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _logInWithPhoneAndPasswordPressed implements LoginEvent {
  const factory _logInWithPhoneAndPasswordPressed() =
      _$_logInWithPhoneAndPasswordPressed;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _LoginState call(
      {required EmailAddress emailAddress,
      required PhoneNumber phoneNumber,
      required Password password,
      required Option<Either<AuthenticationFailure, Unit>>
          authFailureOrSuccessOption,
      required bool isLoading,
      required bool showError}) {
    return _LoginState(
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
      password: password,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
      isLoading: isLoading,
      showError: showError,
    );
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Option<Either<AuthenticationFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      PhoneNumber phoneNumber,
      Password password,
      Option<Either<AuthenticationFailure, Unit>> authFailureOrSuccessOption,
      bool isLoading,
      bool showError});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? showError = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticationFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      PhoneNumber phoneNumber,
      Password password,
      Option<Either<AuthenticationFailure, Unit>> authFailureOrSuccessOption,
      bool isLoading,
      bool showError});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? showError = freezed,
  }) {
    return _then(_LoginState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthenticationFailure, Unit>>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.emailAddress,
      required this.phoneNumber,
      required this.password,
      required this.authFailureOrSuccessOption,
      required this.isLoading,
      required this.showError});

  @override
  final EmailAddress emailAddress;
  @override
  final PhoneNumber phoneNumber;
  @override
  final Password password;
  @override
  final Option<Either<AuthenticationFailure, Unit>> authFailureOrSuccessOption;
  @override
  final bool isLoading;
  @override
  final bool showError;

  @override
  String toString() {
    return 'LoginState(emailAddress: $emailAddress, phoneNumber: $phoneNumber, password: $password, authFailureOrSuccessOption: $authFailureOrSuccessOption, isLoading: $isLoading, showError: $showError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.showError, showError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(showError));

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required EmailAddress emailAddress,
      required PhoneNumber phoneNumber,
      required Password password,
      required Option<Either<AuthenticationFailure, Unit>>
          authFailureOrSuccessOption,
      required bool isLoading,
      required bool showError}) = _$_LoginState;

  @override
  EmailAddress get emailAddress;
  @override
  PhoneNumber get phoneNumber;
  @override
  Password get password;
  @override
  Option<Either<AuthenticationFailure, Unit>> get authFailureOrSuccessOption;
  @override
  bool get isLoading;
  @override
  bool get showError;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
