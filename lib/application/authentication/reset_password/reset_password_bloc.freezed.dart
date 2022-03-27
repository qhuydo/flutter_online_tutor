// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResetPasswordEventTearOff {
  const _$ResetPasswordEventTearOff();

  _EmailChanged emailChanged(String emailStr) {
    return _EmailChanged(
      emailStr,
    );
  }

  _ButtonPressed buttonPressed() {
    return const _ButtonPressed();
  }
}

/// @nodoc
const $ResetPasswordEvent = _$ResetPasswordEventTearOff();

/// @nodoc
mixin _$ResetPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? buttonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_ButtonPressed value) buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(
          ResetPasswordEvent value, $Res Function(ResetPasswordEvent) then) =
      _$ResetPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._value, this._then);

  final ResetPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
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
    return 'ResetPasswordEvent.emailChanged(emailStr: $emailStr)';
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
    required TResult Function() buttonPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? buttonPressed,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? buttonPressed,
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
    required TResult Function(_ButtonPressed value) buttonPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements ResetPasswordEvent {
  const factory _EmailChanged(String emailStr) = _$_EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
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
    extends _$ResetPasswordEventCopyWithImpl<$Res>
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
    return 'ResetPasswordEvent.buttonPressed()';
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
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() buttonPressed,
  }) {
    return buttonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? buttonPressed,
  }) {
    return buttonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
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
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_ButtonPressed value) buttonPressed,
  }) {
    return buttonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
  }) {
    return buttonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ButtonPressed value)? buttonPressed,
    required TResult orElse(),
  }) {
    if (buttonPressed != null) {
      return buttonPressed(this);
    }
    return orElse();
  }
}

abstract class _ButtonPressed implements ResetPasswordEvent {
  const factory _ButtonPressed() = _$_ButtonPressed;
}

/// @nodoc
class _$ResetPasswordStateTearOff {
  const _$ResetPasswordStateTearOff();

  _ResetPasswordState call(
      {required EmailAddress emailAddress,
      required Option<Either<AuthenticationFailure, Unit>>
          authFailureOrSuccessOption,
      required bool isLoading,
      required bool showError}) {
    return _ResetPasswordState(
      emailAddress: emailAddress,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
      isLoading: isLoading,
      showError: showError,
    );
  }
}

/// @nodoc
const $ResetPasswordState = _$ResetPasswordStateTearOff();

/// @nodoc
mixin _$ResetPasswordState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Option<Either<AuthenticationFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Option<Either<AuthenticationFailure, Unit>> authFailureOrSuccessOption,
      bool isLoading,
      bool showError});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  final ResetPasswordState _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? showError = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
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
abstract class _$ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$ResetPasswordStateCopyWith(
          _ResetPasswordState value, $Res Function(_ResetPasswordState) then) =
      __$ResetPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Option<Either<AuthenticationFailure, Unit>> authFailureOrSuccessOption,
      bool isLoading,
      bool showError});
}

/// @nodoc
class __$ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordStateCopyWith<$Res> {
  __$ResetPasswordStateCopyWithImpl(
      _ResetPasswordState _value, $Res Function(_ResetPasswordState) _then)
      : super(_value, (v) => _then(v as _ResetPasswordState));

  @override
  _ResetPasswordState get _value => super._value as _ResetPasswordState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? authFailureOrSuccessOption = freezed,
    Object? isLoading = freezed,
    Object? showError = freezed,
  }) {
    return _then(_ResetPasswordState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
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

class _$_ResetPasswordState implements _ResetPasswordState {
  const _$_ResetPasswordState(
      {required this.emailAddress,
      required this.authFailureOrSuccessOption,
      required this.isLoading,
      required this.showError});

  @override
  final EmailAddress emailAddress;
  @override
  final Option<Either<AuthenticationFailure, Unit>> authFailureOrSuccessOption;
  @override
  final bool isLoading;
  @override
  final bool showError;

  @override
  String toString() {
    return 'ResetPasswordState(emailAddress: $emailAddress, authFailureOrSuccessOption: $authFailureOrSuccessOption, isLoading: $isLoading, showError: $showError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResetPasswordState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.showError, showError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(showError));

  @JsonKey(ignore: true)
  @override
  _$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith =>
      __$ResetPasswordStateCopyWithImpl<_ResetPasswordState>(this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  const factory _ResetPasswordState(
      {required EmailAddress emailAddress,
      required Option<Either<AuthenticationFailure, Unit>>
          authFailureOrSuccessOption,
      required bool isLoading,
      required bool showError}) = _$_ResetPasswordState;

  @override
  EmailAddress get emailAddress;
  @override
  Option<Either<AuthenticationFailure, Unit>> get authFailureOrSuccessOption;
  @override
  bool get isLoading;
  @override
  bool get showError;
  @override
  @JsonKey(ignore: true)
  _$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
