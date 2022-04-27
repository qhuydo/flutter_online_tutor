// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'meeting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MeetingEventTearOff {
  const _$MeetingEventTearOff();

  _Initialise initialise(Appointment? appointment) {
    return _Initialise(
      appointment,
    );
  }

  _Join join() {
    return const _Join();
  }
}

/// @nodoc
const $MeetingEvent = _$MeetingEventTearOff();

/// @nodoc
mixin _$MeetingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Appointment? appointment) initialise,
    required TResult Function() join,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Appointment? appointment)? initialise,
    TResult Function()? join,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Appointment? appointment)? initialise,
    TResult Function()? join,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_Join value) join,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Join value)? join,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Join value)? join,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingEventCopyWith<$Res> {
  factory $MeetingEventCopyWith(
          MeetingEvent value, $Res Function(MeetingEvent) then) =
      _$MeetingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MeetingEventCopyWithImpl<$Res> implements $MeetingEventCopyWith<$Res> {
  _$MeetingEventCopyWithImpl(this._value, this._then);

  final MeetingEvent _value;
  // ignore: unused_field
  final $Res Function(MeetingEvent) _then;
}

/// @nodoc
abstract class _$InitialiseCopyWith<$Res> {
  factory _$InitialiseCopyWith(
          _Initialise value, $Res Function(_Initialise) then) =
      __$InitialiseCopyWithImpl<$Res>;
  $Res call({Appointment? appointment});

  $AppointmentCopyWith<$Res>? get appointment;
}

/// @nodoc
class __$InitialiseCopyWithImpl<$Res> extends _$MeetingEventCopyWithImpl<$Res>
    implements _$InitialiseCopyWith<$Res> {
  __$InitialiseCopyWithImpl(
      _Initialise _value, $Res Function(_Initialise) _then)
      : super(_value, (v) => _then(v as _Initialise));

  @override
  _Initialise get _value => super._value as _Initialise;

  @override
  $Res call({
    Object? appointment = freezed,
  }) {
    return _then(_Initialise(
      appointment == freezed
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
    ));
  }

  @override
  $AppointmentCopyWith<$Res>? get appointment {
    if (_value.appointment == null) {
      return null;
    }

    return $AppointmentCopyWith<$Res>(_value.appointment!, (value) {
      return _then(_value.copyWith(appointment: value));
    });
  }
}

/// @nodoc

class _$_Initialise implements _Initialise {
  const _$_Initialise(this.appointment);

  @override
  final Appointment? appointment;

  @override
  String toString() {
    return 'MeetingEvent.initialise(appointment: $appointment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initialise &&
            const DeepCollectionEquality()
                .equals(other.appointment, appointment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(appointment));

  @JsonKey(ignore: true)
  @override
  _$InitialiseCopyWith<_Initialise> get copyWith =>
      __$InitialiseCopyWithImpl<_Initialise>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Appointment? appointment) initialise,
    required TResult Function() join,
  }) {
    return initialise(appointment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Appointment? appointment)? initialise,
    TResult Function()? join,
  }) {
    return initialise?.call(appointment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Appointment? appointment)? initialise,
    TResult Function()? join,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(appointment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_Join value) join,
  }) {
    return initialise(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Join value)? join,
  }) {
    return initialise?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Join value)? join,
    required TResult orElse(),
  }) {
    if (initialise != null) {
      return initialise(this);
    }
    return orElse();
  }
}

abstract class _Initialise implements MeetingEvent {
  const factory _Initialise(Appointment? appointment) = _$_Initialise;

  Appointment? get appointment;
  @JsonKey(ignore: true)
  _$InitialiseCopyWith<_Initialise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$JoinCopyWith<$Res> {
  factory _$JoinCopyWith(_Join value, $Res Function(_Join) then) =
      __$JoinCopyWithImpl<$Res>;
}

/// @nodoc
class __$JoinCopyWithImpl<$Res> extends _$MeetingEventCopyWithImpl<$Res>
    implements _$JoinCopyWith<$Res> {
  __$JoinCopyWithImpl(_Join _value, $Res Function(_Join) _then)
      : super(_value, (v) => _then(v as _Join));

  @override
  _Join get _value => super._value as _Join;
}

/// @nodoc

class _$_Join implements _Join {
  const _$_Join();

  @override
  String toString() {
    return 'MeetingEvent.join()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Join);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Appointment? appointment) initialise,
    required TResult Function() join,
  }) {
    return join();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Appointment? appointment)? initialise,
    TResult Function()? join,
  }) {
    return join?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Appointment? appointment)? initialise,
    TResult Function()? join,
    required TResult orElse(),
  }) {
    if (join != null) {
      return join();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialise value) initialise,
    required TResult Function(_Join value) join,
  }) {
    return join(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Join value)? join,
  }) {
    return join?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialise value)? initialise,
    TResult Function(_Join value)? join,
    required TResult orElse(),
  }) {
    if (join != null) {
      return join(this);
    }
    return orElse();
  }
}

abstract class _Join implements MeetingEvent {
  const factory _Join() = _$_Join;
}

/// @nodoc
class _$MeetingStateTearOff {
  const _$MeetingStateTearOff();

  _MeetingState call({Appointment? appointment}) {
    return _MeetingState(
      appointment: appointment,
    );
  }
}

/// @nodoc
const $MeetingState = _$MeetingStateTearOff();

/// @nodoc
mixin _$MeetingState {
  Appointment? get appointment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MeetingStateCopyWith<MeetingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingStateCopyWith<$Res> {
  factory $MeetingStateCopyWith(
          MeetingState value, $Res Function(MeetingState) then) =
      _$MeetingStateCopyWithImpl<$Res>;
  $Res call({Appointment? appointment});

  $AppointmentCopyWith<$Res>? get appointment;
}

/// @nodoc
class _$MeetingStateCopyWithImpl<$Res> implements $MeetingStateCopyWith<$Res> {
  _$MeetingStateCopyWithImpl(this._value, this._then);

  final MeetingState _value;
  // ignore: unused_field
  final $Res Function(MeetingState) _then;

  @override
  $Res call({
    Object? appointment = freezed,
  }) {
    return _then(_value.copyWith(
      appointment: appointment == freezed
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
    ));
  }

  @override
  $AppointmentCopyWith<$Res>? get appointment {
    if (_value.appointment == null) {
      return null;
    }

    return $AppointmentCopyWith<$Res>(_value.appointment!, (value) {
      return _then(_value.copyWith(appointment: value));
    });
  }
}

/// @nodoc
abstract class _$MeetingStateCopyWith<$Res>
    implements $MeetingStateCopyWith<$Res> {
  factory _$MeetingStateCopyWith(
          _MeetingState value, $Res Function(_MeetingState) then) =
      __$MeetingStateCopyWithImpl<$Res>;
  @override
  $Res call({Appointment? appointment});

  @override
  $AppointmentCopyWith<$Res>? get appointment;
}

/// @nodoc
class __$MeetingStateCopyWithImpl<$Res> extends _$MeetingStateCopyWithImpl<$Res>
    implements _$MeetingStateCopyWith<$Res> {
  __$MeetingStateCopyWithImpl(
      _MeetingState _value, $Res Function(_MeetingState) _then)
      : super(_value, (v) => _then(v as _MeetingState));

  @override
  _MeetingState get _value => super._value as _MeetingState;

  @override
  $Res call({
    Object? appointment = freezed,
  }) {
    return _then(_MeetingState(
      appointment: appointment == freezed
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
    ));
  }
}

/// @nodoc

class _$_MeetingState implements _MeetingState {
  const _$_MeetingState({this.appointment});

  @override
  final Appointment? appointment;

  @override
  String toString() {
    return 'MeetingState(appointment: $appointment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MeetingState &&
            const DeepCollectionEquality()
                .equals(other.appointment, appointment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(appointment));

  @JsonKey(ignore: true)
  @override
  _$MeetingStateCopyWith<_MeetingState> get copyWith =>
      __$MeetingStateCopyWithImpl<_MeetingState>(this, _$identity);
}

abstract class _MeetingState implements MeetingState {
  const factory _MeetingState({Appointment? appointment}) = _$_MeetingState;

  @override
  Appointment? get appointment;
  @override
  @JsonKey(ignore: true)
  _$MeetingStateCopyWith<_MeetingState> get copyWith =>
      throw _privateConstructorUsedError;
}
