// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

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

  _PhoneNumberChanged phoneNumberChanged(Country country, String phoneNumber) {
    return _PhoneNumberChanged(
      country,
      phoneNumber,
    );
  }

  _SignUpWithEmailAndPasswordPressed signUpWithEmailAndPasswordPressed() {
    return const _SignUpWithEmailAndPasswordPressed();
  }

  _SignUpWithPhoneAndPasswordPressed signUpWithPhoneAndPasswordPressed() {
    return const _SignUpWithPhoneAndPasswordPressed();
  }
}

/// @nodoc
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(Country country, String phoneNumber)
        phoneNumberChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function() signUpWithPhoneAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(Country country, String phoneNumber)? phoneNumberChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function()? signUpWithPhoneAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(Country country, String phoneNumber)? phoneNumberChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function()? signUpWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithPhoneAndPasswordPressed value)
        signUpWithPhoneAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithPhoneAndPasswordPressed value)?
        signUpWithPhoneAndPasswordPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithPhoneAndPasswordPressed value)?
        signUpWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res> extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.emailChanged(emailStr: $emailStr)';
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
    required TResult Function(Country country, String phoneNumber)
        phoneNumberChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function() signUpWithPhoneAndPasswordPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(Country country, String phoneNumber)? phoneNumberChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function()? signUpWithPhoneAndPasswordPressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(Country country, String phoneNumber)? phoneNumberChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function()? signUpWithPhoneAndPasswordPressed,
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
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithPhoneAndPasswordPressed value)
        signUpWithPhoneAndPasswordPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithPhoneAndPasswordPressed value)?
        signUpWithPhoneAndPasswordPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithPhoneAndPasswordPressed value)?
        signUpWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignUpEvent {
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
    extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.passwordChanged(passwordStr: $passwordStr)';
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
    required TResult Function(Country country, String phoneNumber)
        phoneNumberChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function() signUpWithPhoneAndPasswordPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(Country country, String phoneNumber)? phoneNumberChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function()? signUpWithPhoneAndPasswordPressed,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(Country country, String phoneNumber)? phoneNumberChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function()? signUpWithPhoneAndPasswordPressed,
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
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithPhoneAndPasswordPressed value)
        signUpWithPhoneAndPasswordPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithPhoneAndPasswordPressed value)?
        signUpWithPhoneAndPasswordPressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithPhoneAndPasswordPressed value)?
        signUpWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignUpEvent {
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
  $Res call({Country country, String phoneNumber});

  $CountryCopyWith<$Res> get country;
}

/// @nodoc
class __$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$PhoneNumberChangedCopyWith<$Res> {
  __$PhoneNumberChangedCopyWithImpl(
      _PhoneNumberChanged _value, $Res Function(_PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _PhoneNumberChanged));

  @override
  _PhoneNumberChanged get _value => super._value as _PhoneNumberChanged;

  @override
  $Res call({
    Object? country = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_PhoneNumberChanged(
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $CountryCopyWith<$Res> get country {
    return $CountryCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value));
    });
  }
}

/// @nodoc

class _$_PhoneNumberChanged implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.country, this.phoneNumber);

  @override
  final Country country;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'SignUpEvent.phoneNumberChanged(country: $country, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PhoneNumberChanged &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      __$PhoneNumberChangedCopyWithImpl<_PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(Country country, String phoneNumber)
        phoneNumberChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function() signUpWithPhoneAndPasswordPressed,
  }) {
    return phoneNumberChanged(country, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(Country country, String phoneNumber)? phoneNumberChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function()? signUpWithPhoneAndPasswordPressed,
  }) {
    return phoneNumberChanged?.call(country, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(Country country, String phoneNumber)? phoneNumberChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function()? signUpWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(country, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithPhoneAndPasswordPressed value)
        signUpWithPhoneAndPasswordPressed,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithPhoneAndPasswordPressed value)?
        signUpWithPhoneAndPasswordPressed,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithPhoneAndPasswordPressed value)?
        signUpWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements SignUpEvent {
  const factory _PhoneNumberChanged(Country country, String phoneNumber) =
      _$_PhoneNumberChanged;

  Country get country;
  String get phoneNumber;
  @JsonKey(ignore: true)
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignUpWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$SignUpWithEmailAndPasswordPressedCopyWith(
          _SignUpWithEmailAndPasswordPressed value,
          $Res Function(_SignUpWithEmailAndPasswordPressed) then) =
      __$SignUpWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignUpWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$SignUpWithEmailAndPasswordPressedCopyWith<$Res> {
  __$SignUpWithEmailAndPasswordPressedCopyWithImpl(
      _SignUpWithEmailAndPasswordPressed _value,
      $Res Function(_SignUpWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _SignUpWithEmailAndPasswordPressed));

  @override
  _SignUpWithEmailAndPasswordPressed get _value =>
      super._value as _SignUpWithEmailAndPasswordPressed;
}

/// @nodoc

class _$_SignUpWithEmailAndPasswordPressed
    implements _SignUpWithEmailAndPasswordPressed {
  const _$_SignUpWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignUpEvent.signUpWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(Country country, String phoneNumber)
        phoneNumberChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function() signUpWithPhoneAndPasswordPressed,
  }) {
    return signUpWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(Country country, String phoneNumber)? phoneNumberChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function()? signUpWithPhoneAndPasswordPressed,
  }) {
    return signUpWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(Country country, String phoneNumber)? phoneNumberChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function()? signUpWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPasswordPressed != null) {
      return signUpWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithPhoneAndPasswordPressed value)
        signUpWithPhoneAndPasswordPressed,
  }) {
    return signUpWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithPhoneAndPasswordPressed value)?
        signUpWithPhoneAndPasswordPressed,
  }) {
    return signUpWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithPhoneAndPasswordPressed value)?
        signUpWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (signUpWithEmailAndPasswordPressed != null) {
      return signUpWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithEmailAndPasswordPressed implements SignUpEvent {
  const factory _SignUpWithEmailAndPasswordPressed() =
      _$_SignUpWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$SignUpWithPhoneAndPasswordPressedCopyWith<$Res> {
  factory _$SignUpWithPhoneAndPasswordPressedCopyWith(
          _SignUpWithPhoneAndPasswordPressed value,
          $Res Function(_SignUpWithPhoneAndPasswordPressed) then) =
      __$SignUpWithPhoneAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignUpWithPhoneAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$SignUpWithPhoneAndPasswordPressedCopyWith<$Res> {
  __$SignUpWithPhoneAndPasswordPressedCopyWithImpl(
      _SignUpWithPhoneAndPasswordPressed _value,
      $Res Function(_SignUpWithPhoneAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as _SignUpWithPhoneAndPasswordPressed));

  @override
  _SignUpWithPhoneAndPasswordPressed get _value =>
      super._value as _SignUpWithPhoneAndPasswordPressed;
}

/// @nodoc

class _$_SignUpWithPhoneAndPasswordPressed
    implements _SignUpWithPhoneAndPasswordPressed {
  const _$_SignUpWithPhoneAndPasswordPressed();

  @override
  String toString() {
    return 'SignUpEvent.signUpWithPhoneAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpWithPhoneAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(Country country, String phoneNumber)
        phoneNumberChanged,
    required TResult Function() signUpWithEmailAndPasswordPressed,
    required TResult Function() signUpWithPhoneAndPasswordPressed,
  }) {
    return signUpWithPhoneAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(Country country, String phoneNumber)? phoneNumberChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function()? signUpWithPhoneAndPasswordPressed,
  }) {
    return signUpWithPhoneAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(Country country, String phoneNumber)? phoneNumberChanged,
    TResult Function()? signUpWithEmailAndPasswordPressed,
    TResult Function()? signUpWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (signUpWithPhoneAndPasswordPressed != null) {
      return signUpWithPhoneAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SignUpWithEmailAndPasswordPressed value)
        signUpWithEmailAndPasswordPressed,
    required TResult Function(_SignUpWithPhoneAndPasswordPressed value)
        signUpWithPhoneAndPasswordPressed,
  }) {
    return signUpWithPhoneAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithPhoneAndPasswordPressed value)?
        signUpWithPhoneAndPasswordPressed,
  }) {
    return signUpWithPhoneAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SignUpWithEmailAndPasswordPressed value)?
        signUpWithEmailAndPasswordPressed,
    TResult Function(_SignUpWithPhoneAndPasswordPressed value)?
        signUpWithPhoneAndPasswordPressed,
    required TResult orElse(),
  }) {
    if (signUpWithPhoneAndPasswordPressed != null) {
      return signUpWithPhoneAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class _SignUpWithPhoneAndPasswordPressed implements SignUpEvent {
  const factory _SignUpWithPhoneAndPasswordPressed() =
      _$_SignUpWithPhoneAndPasswordPressed;
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  _SignUpState call(
      {required EmailAddress emailAddress,
      required PhoneNumber phoneNumber,
      required Password password,
      required Option<Either<AuthenticationFailure, Unit>>
          authFailureOrSuccessOption,
      required bool isLoading,
      required bool showError}) {
    return _SignUpState(
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
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Option<Either<AuthenticationFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      PhoneNumber phoneNumber,
      Password password,
      Option<Either<AuthenticationFailure, Unit>> authFailureOrSuccessOption,
      bool isLoading,
      bool showError});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

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
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
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
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? phoneNumber = freezed,
    Object? password = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? showError = freezed,
  }) {
    return _then(_SignUpState(
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

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
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
    return 'SignUpState(emailAddress: $emailAddress, phoneNumber: $phoneNumber, password: $password, authFailureOrSuccessOption: $authFailureOrSuccessOption, isLoading: $isLoading, showError: $showError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpState &&
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
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {required EmailAddress emailAddress,
      required PhoneNumber phoneNumber,
      required Password password,
      required Option<Either<AuthenticationFailure, Unit>>
          authFailureOrSuccessOption,
      required bool isLoading,
      required bool showError}) = _$_SignUpState;

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
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
