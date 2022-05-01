// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_repository_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScheduleRepositoryEventTearOff {
  const _$ScheduleRepositoryEventTearOff();

  _DataChanged dataChanged() {
    return const _DataChanged();
  }
}

/// @nodoc
const $ScheduleRepositoryEvent = _$ScheduleRepositoryEventTearOff();

/// @nodoc
mixin _$ScheduleRepositoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? dataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleRepositoryEventCopyWith<$Res> {
  factory $ScheduleRepositoryEventCopyWith(ScheduleRepositoryEvent value,
          $Res Function(ScheduleRepositoryEvent) then) =
      _$ScheduleRepositoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ScheduleRepositoryEventCopyWithImpl<$Res>
    implements $ScheduleRepositoryEventCopyWith<$Res> {
  _$ScheduleRepositoryEventCopyWithImpl(this._value, this._then);

  final ScheduleRepositoryEvent _value;
  // ignore: unused_field
  final $Res Function(ScheduleRepositoryEvent) _then;
}

/// @nodoc
abstract class _$DataChangedCopyWith<$Res> {
  factory _$DataChangedCopyWith(
          _DataChanged value, $Res Function(_DataChanged) then) =
      __$DataChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DataChangedCopyWithImpl<$Res>
    extends _$ScheduleRepositoryEventCopyWithImpl<$Res>
    implements _$DataChangedCopyWith<$Res> {
  __$DataChangedCopyWithImpl(
      _DataChanged _value, $Res Function(_DataChanged) _then)
      : super(_value, (v) => _then(v as _DataChanged));

  @override
  _DataChanged get _value => super._value as _DataChanged;
}

/// @nodoc

class _$_DataChanged extends _DataChanged {
  const _$_DataChanged() : super._();

  @override
  String toString() {
    return 'ScheduleRepositoryEvent.dataChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DataChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataChanged,
  }) {
    return dataChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? dataChanged,
  }) {
    return dataChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataChanged,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataChanged value) dataChanged,
  }) {
    return dataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
  }) {
    return dataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataChanged value)? dataChanged,
    required TResult orElse(),
  }) {
    if (dataChanged != null) {
      return dataChanged(this);
    }
    return orElse();
  }
}

abstract class _DataChanged extends ScheduleRepositoryEvent {
  const factory _DataChanged() = _$_DataChanged;
  const _DataChanged._() : super._();
}
