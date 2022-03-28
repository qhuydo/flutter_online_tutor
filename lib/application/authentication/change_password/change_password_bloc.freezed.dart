// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChangePasswordEventTearOff {
  const _$ChangePasswordEventTearOff();

  _OldPasswordChanged oldPasswordChanged(String passwordStr) {
    return _OldPasswordChanged(
      passwordStr,
    );
  }

  _NewPasswordChanged newPasswordChanged(String passwordStr) {
    return _NewPasswordChanged(
      passwordStr,
    );
  }

  _ConfirmPasswordChanged confirmPasswordChanged(String passwordStr) {
    return _ConfirmPasswordChanged(
      passwordStr,
    );
  }

  _ButtonPressed buttonPressed() {
    return const _ButtonPressed();
  }
}

/// @nodoc
const $ChangePasswordEvent = _$ChangePasswordEventTearOff();

/// @nodoc
mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordStr) oldPasswordChanged,
    required TResult Function(String passwordStr) newPasswordChanged,
    required TResult Function(String passwordStr) confirmPasswordChanged,
    required TResult Function() buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String passwordStr)? oldPasswordChanged,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String passwordStr)? confirmPasswordChanged,
    TResult Function()? buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordStr)? oldPasswordChanged,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String passwordStr)? confirmPasswordChanged,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ButtonPressed value) buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  final ChangePasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordEvent) _then;
}

/// @nodoc
abstract class _$OldPasswordChangedCopyWith<$Res> {
  factory _$OldPasswordChangedCopyWith(
          _OldPasswordChanged value, $Res Function(_OldPasswordChanged) then) =
      __$OldPasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$OldPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$OldPasswordChangedCopyWith<$Res> {
  __$OldPasswordChangedCopyWithImpl(
      _OldPasswordChanged _value, $Res Function(_OldPasswordChanged) _then)
      : super(_value, (v) => _then(v as _OldPasswordChanged));

  @override
  _OldPasswordChanged get _value => super._value as _OldPasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_OldPasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OldPasswordChanged implements _OldPasswordChanged {
  const _$_OldPasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'ChangePasswordEvent.oldPasswordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OldPasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordStr, passwordStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordStr));

  @JsonKey(ignore: true)
  @override
  _$OldPasswordChangedCopyWith<_OldPasswordChanged> get copyWith =>
      __$OldPasswordChangedCopyWithImpl<_OldPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordStr) oldPasswordChanged,
    required TResult Function(String passwordStr) newPasswordChanged,
    required TResult Function(String passwordStr) confirmPasswordChanged,
    required TResult Function() buttonPressed,
  }) {
    return oldPasswordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String passwordStr)? oldPasswordChanged,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String passwordStr)? confirmPasswordChanged,
    TResult Function()? buttonPressed,
  }) {
    return oldPasswordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordStr)? oldPasswordChanged,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String passwordStr)? confirmPasswordChanged,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) {
    if (oldPasswordChanged != null) {
      return oldPasswordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ButtonPressed value) buttonPressed,
  }) {
    return oldPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
  }) {
    return oldPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (oldPasswordChanged != null) {
      return oldPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _OldPasswordChanged implements ChangePasswordEvent {
  const factory _OldPasswordChanged(String passwordStr) = _$_OldPasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$OldPasswordChangedCopyWith<_OldPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NewPasswordChangedCopyWith<$Res> {
  factory _$NewPasswordChangedCopyWith(
          _NewPasswordChanged value, $Res Function(_NewPasswordChanged) then) =
      __$NewPasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$NewPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$NewPasswordChangedCopyWith<$Res> {
  __$NewPasswordChangedCopyWithImpl(
      _NewPasswordChanged _value, $Res Function(_NewPasswordChanged) _then)
      : super(_value, (v) => _then(v as _NewPasswordChanged));

  @override
  _NewPasswordChanged get _value => super._value as _NewPasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_NewPasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewPasswordChanged implements _NewPasswordChanged {
  const _$_NewPasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'ChangePasswordEvent.newPasswordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewPasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordStr, passwordStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordStr));

  @JsonKey(ignore: true)
  @override
  _$NewPasswordChangedCopyWith<_NewPasswordChanged> get copyWith =>
      __$NewPasswordChangedCopyWithImpl<_NewPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordStr) oldPasswordChanged,
    required TResult Function(String passwordStr) newPasswordChanged,
    required TResult Function(String passwordStr) confirmPasswordChanged,
    required TResult Function() buttonPressed,
  }) {
    return newPasswordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String passwordStr)? oldPasswordChanged,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String passwordStr)? confirmPasswordChanged,
    TResult Function()? buttonPressed,
  }) {
    return newPasswordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordStr)? oldPasswordChanged,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String passwordStr)? confirmPasswordChanged,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ButtonPressed value) buttonPressed,
  }) {
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
  }) {
    return newPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _NewPasswordChanged implements ChangePasswordEvent {
  const factory _NewPasswordChanged(String passwordStr) = _$_NewPasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$NewPasswordChangedCopyWith<_NewPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmPasswordChangedCopyWith<$Res> {
  factory _$ConfirmPasswordChangedCopyWith(_ConfirmPasswordChanged value,
          $Res Function(_ConfirmPasswordChanged) then) =
      __$ConfirmPasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$ConfirmPasswordChangedCopyWith<$Res> {
  __$ConfirmPasswordChangedCopyWithImpl(_ConfirmPasswordChanged _value,
      $Res Function(_ConfirmPasswordChanged) _then)
      : super(_value, (v) => _then(v as _ConfirmPasswordChanged));

  @override
  _ConfirmPasswordChanged get _value => super._value as _ConfirmPasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_ConfirmPasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmPasswordChanged implements _ConfirmPasswordChanged {
  const _$_ConfirmPasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'ChangePasswordEvent.confirmPasswordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConfirmPasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordStr, passwordStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordStr));

  @JsonKey(ignore: true)
  @override
  _$ConfirmPasswordChangedCopyWith<_ConfirmPasswordChanged> get copyWith =>
      __$ConfirmPasswordChangedCopyWithImpl<_ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordStr) oldPasswordChanged,
    required TResult Function(String passwordStr) newPasswordChanged,
    required TResult Function(String passwordStr) confirmPasswordChanged,
    required TResult Function() buttonPressed,
  }) {
    return confirmPasswordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String passwordStr)? oldPasswordChanged,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String passwordStr)? confirmPasswordChanged,
    TResult Function()? buttonPressed,
  }) {
    return confirmPasswordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordStr)? oldPasswordChanged,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String passwordStr)? confirmPasswordChanged,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ButtonPressed value) buttonPressed,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements ChangePasswordEvent {
  const factory _ConfirmPasswordChanged(String passwordStr) =
      _$_ConfirmPasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$ConfirmPasswordChangedCopyWith<_ConfirmPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ButtonPressedCopyWith<$Res> {
  factory _$ButtonPressedCopyWith(
          _ButtonPressed value, $Res Function(_ButtonPressed) then) =
      __$ButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ButtonPressedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$ButtonPressedCopyWith<$Res> {
  __$ButtonPressedCopyWithImpl(
      _ButtonPressed _value, $Res Function(_ButtonPressed) _then)
      : super(_value, (v) => _then(v as _ButtonPressed));

  @override
  _ButtonPressed get _value => super._value as _ButtonPressed;
}

/// @nodoc

class _$_ButtonPressed implements _ButtonPressed {
  const _$_ButtonPressed();

  @override
  String toString() {
    return 'ChangePasswordEvent.buttonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordStr) oldPasswordChanged,
    required TResult Function(String passwordStr) newPasswordChanged,
    required TResult Function(String passwordStr) confirmPasswordChanged,
    required TResult Function() buttonPressed,
  }) {
    return buttonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String passwordStr)? oldPasswordChanged,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String passwordStr)? confirmPasswordChanged,
    TResult Function()? buttonPressed,
  }) {
    return buttonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordStr)? oldPasswordChanged,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String passwordStr)? confirmPasswordChanged,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) {
    if (buttonPressed != null) {
      return buttonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordChanged value) oldPasswordChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_ButtonPressed value) buttonPressed,
  }) {
    return buttonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
  }) {
    return buttonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordChanged value)? oldPasswordChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (buttonPressed != null) {
      return buttonPressed(this);
    }
    return orElse();
  }
}

abstract class _ButtonPressed implements ChangePasswordEvent {
  const factory _ButtonPressed() = _$_ButtonPressed;
}

/// @nodoc
class _$ChangePasswordStateTearOff {
  const _$ChangePasswordStateTearOff();

  _ChangePasswordState call(
      {required Password oldPassword,
      required Password newPassword,
      required ConfirmPassword confirmPassword,
      required Option<Either<AuthenticationFailure, Unit>>
          authFailureOrSuccessOption,
      required bool isLoading,
      required bool showError}) {
    return _ChangePasswordState(
      oldPassword: oldPassword,
      newPassword: newPassword,
      confirmPassword: confirmPassword,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
      isLoading: isLoading,
      showError: showError,
    );
  }
}

/// @nodoc
const $ChangePasswordState = _$ChangePasswordStateTearOff();

/// @nodoc
mixin _$ChangePasswordState {
  Password get oldPassword => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;
  ConfirmPassword get confirmPassword => throw _privateConstructorUsedError;
  Option<Either<AuthenticationFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
  $Res call(
      {Password oldPassword,
      Password newPassword,
      ConfirmPassword confirmPassword,
      Option<Either<AuthenticationFailure, Unit>> authFailureOrSuccessOption,
      bool isLoading,
      bool showError});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? showError = freezed,
  }) {
    return _then(_value.copyWith(
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
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
abstract class _$ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$ChangePasswordStateCopyWith(_ChangePasswordState value,
          $Res Function(_ChangePasswordState) then) =
      __$ChangePasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password oldPassword,
      Password newPassword,
      ConfirmPassword confirmPassword,
      Option<Either<AuthenticationFailure, Unit>> authFailureOrSuccessOption,
      bool isLoading,
      bool showError});
}

/// @nodoc
class __$ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$ChangePasswordStateCopyWith<$Res> {
  __$ChangePasswordStateCopyWithImpl(
      _ChangePasswordState _value, $Res Function(_ChangePasswordState) _then)
      : super(_value, (v) => _then(v as _ChangePasswordState));

  @override
  _ChangePasswordState get _value => super._value as _ChangePasswordState;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? showError = freezed,
  }) {
    return _then(_ChangePasswordState(
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
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

class _$_ChangePasswordState implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {required this.oldPassword,
      required this.newPassword,
      required this.confirmPassword,
      required this.authFailureOrSuccessOption,
      required this.isLoading,
      required this.showError});

  @override
  final Password oldPassword;
  @override
  final Password newPassword;
  @override
  final ConfirmPassword confirmPassword;
  @override
  final Option<Either<AuthenticationFailure, Unit>> authFailureOrSuccessOption;
  @override
  final bool isLoading;
  @override
  final bool showError;

  @override
  String toString() {
    return 'ChangePasswordState(oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword, authFailureOrSuccessOption: $authFailureOrSuccessOption, isLoading: $isLoading, showError: $showError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePasswordState &&
            const DeepCollectionEquality()
                .equals(other.oldPassword, oldPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.showError, showError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldPassword),
      const DeepCollectionEquality().hash(newPassword),
      const DeepCollectionEquality().hash(confirmPassword),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(showError));

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      __$ChangePasswordStateCopyWithImpl<_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
      {required Password oldPassword,
      required Password newPassword,
      required ConfirmPassword confirmPassword,
      required Option<Either<AuthenticationFailure, Unit>>
          authFailureOrSuccessOption,
      required bool isLoading,
      required bool showError}) = _$_ChangePasswordState;

  @override
  Password get oldPassword;
  @override
  Password get newPassword;
  @override
  ConfirmPassword get confirmPassword;
  @override
  Option<Either<AuthenticationFailure, Unit>> get authFailureOrSuccessOption;
  @override
  bool get isLoading;
  @override
  bool get showError;
  @override
  @JsonKey(ignore: true)
  _$ChangePasswordStateCopyWith<_ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
