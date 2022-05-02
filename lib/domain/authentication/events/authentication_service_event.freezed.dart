// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_service_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationServiceEventTearOff {
  const _$AuthenticationServiceEventTearOff();

  _SignedOut signedOut() {
    return const _SignedOut();
  }

  _ProfileUpdated profileUpdated() {
    return const _ProfileUpdated();
  }
}

/// @nodoc
const $AuthenticationServiceEvent = _$AuthenticationServiceEventTearOff();

/// @nodoc
mixin _$AuthenticationServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() profileUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? profileUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? profileUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ProfileUpdated value) profileUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ProfileUpdated value)? profileUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ProfileUpdated value)? profileUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationServiceEventCopyWith<$Res> {
  factory $AuthenticationServiceEventCopyWith(AuthenticationServiceEvent value,
          $Res Function(AuthenticationServiceEvent) then) =
      _$AuthenticationServiceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationServiceEventCopyWithImpl<$Res>
    implements $AuthenticationServiceEventCopyWith<$Res> {
  _$AuthenticationServiceEventCopyWithImpl(this._value, this._then);

  final AuthenticationServiceEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationServiceEvent) _then;
}

/// @nodoc
abstract class _$SignedOutCopyWith<$Res> {
  factory _$SignedOutCopyWith(
          _SignedOut value, $Res Function(_SignedOut) then) =
      __$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignedOutCopyWithImpl<$Res>
    extends _$AuthenticationServiceEventCopyWithImpl<$Res>
    implements _$SignedOutCopyWith<$Res> {
  __$SignedOutCopyWithImpl(_SignedOut _value, $Res Function(_SignedOut) _then)
      : super(_value, (v) => _then(v as _SignedOut));

  @override
  _SignedOut get _value => super._value as _SignedOut;
}

/// @nodoc

class _$_SignedOut implements _SignedOut {
  const _$_SignedOut();

  @override
  String toString() {
    return 'AuthenticationServiceEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() profileUpdated,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? profileUpdated,
  }) {
    return signedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? profileUpdated,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ProfileUpdated value) profileUpdated,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ProfileUpdated value)? profileUpdated,
  }) {
    return signedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ProfileUpdated value)? profileUpdated,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class _SignedOut implements AuthenticationServiceEvent {
  const factory _SignedOut() = _$_SignedOut;
}

/// @nodoc
abstract class _$ProfileUpdatedCopyWith<$Res> {
  factory _$ProfileUpdatedCopyWith(
          _ProfileUpdated value, $Res Function(_ProfileUpdated) then) =
      __$ProfileUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProfileUpdatedCopyWithImpl<$Res>
    extends _$AuthenticationServiceEventCopyWithImpl<$Res>
    implements _$ProfileUpdatedCopyWith<$Res> {
  __$ProfileUpdatedCopyWithImpl(
      _ProfileUpdated _value, $Res Function(_ProfileUpdated) _then)
      : super(_value, (v) => _then(v as _ProfileUpdated));

  @override
  _ProfileUpdated get _value => super._value as _ProfileUpdated;
}

/// @nodoc

class _$_ProfileUpdated implements _ProfileUpdated {
  const _$_ProfileUpdated();

  @override
  String toString() {
    return 'AuthenticationServiceEvent.profileUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ProfileUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signedOut,
    required TResult Function() profileUpdated,
  }) {
    return profileUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? profileUpdated,
  }) {
    return profileUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signedOut,
    TResult Function()? profileUpdated,
    required TResult orElse(),
  }) {
    if (profileUpdated != null) {
      return profileUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignedOut value) signedOut,
    required TResult Function(_ProfileUpdated value) profileUpdated,
  }) {
    return profileUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ProfileUpdated value)? profileUpdated,
  }) {
    return profileUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignedOut value)? signedOut,
    TResult Function(_ProfileUpdated value)? profileUpdated,
    required TResult orElse(),
  }) {
    if (profileUpdated != null) {
      return profileUpdated(this);
    }
    return orElse();
  }
}

abstract class _ProfileUpdated implements AuthenticationServiceEvent {
  const factory _ProfileUpdated() = _$_ProfileUpdated;
}
