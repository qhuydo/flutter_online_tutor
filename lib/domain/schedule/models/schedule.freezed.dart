// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ScheduleTearOff {
  const _$ScheduleTearOff();

  _Schedule call(
      {required String scheduleId,
      required String tutorId,
      required DateTimeRange meetingTime,
      required bool isBooked,
      required bool isReserved}) {
    return _Schedule(
      scheduleId: scheduleId,
      tutorId: tutorId,
      meetingTime: meetingTime,
      isBooked: isBooked,
      isReserved: isReserved,
    );
  }
}

/// @nodoc
const $Schedule = _$ScheduleTearOff();

/// @nodoc
mixin _$Schedule {
  String get scheduleId => throw _privateConstructorUsedError;
  String get tutorId => throw _privateConstructorUsedError;
  DateTimeRange get meetingTime => throw _privateConstructorUsedError;
  bool get isBooked => throw _privateConstructorUsedError;
  bool get isReserved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res>;
  $Res call(
      {String scheduleId,
      String tutorId,
      DateTimeRange meetingTime,
      bool isBooked,
      bool isReserved});
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res> implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  final Schedule _value;
  // ignore: unused_field
  final $Res Function(Schedule) _then;

  @override
  $Res call({
    Object? scheduleId = freezed,
    Object? tutorId = freezed,
    Object? meetingTime = freezed,
    Object? isBooked = freezed,
    Object? isReserved = freezed,
  }) {
    return _then(_value.copyWith(
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      tutorId: tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      meetingTime: meetingTime == freezed
          ? _value.meetingTime
          : meetingTime // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
      isBooked: isBooked == freezed
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool,
      isReserved: isReserved == freezed
          ? _value.isReserved
          : isReserved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$ScheduleCopyWith(_Schedule value, $Res Function(_Schedule) then) =
      __$ScheduleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String scheduleId,
      String tutorId,
      DateTimeRange meetingTime,
      bool isBooked,
      bool isReserved});
}

/// @nodoc
class __$ScheduleCopyWithImpl<$Res> extends _$ScheduleCopyWithImpl<$Res>
    implements _$ScheduleCopyWith<$Res> {
  __$ScheduleCopyWithImpl(_Schedule _value, $Res Function(_Schedule) _then)
      : super(_value, (v) => _then(v as _Schedule));

  @override
  _Schedule get _value => super._value as _Schedule;

  @override
  $Res call({
    Object? scheduleId = freezed,
    Object? tutorId = freezed,
    Object? meetingTime = freezed,
    Object? isBooked = freezed,
    Object? isReserved = freezed,
  }) {
    return _then(_Schedule(
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      tutorId: tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      meetingTime: meetingTime == freezed
          ? _value.meetingTime
          : meetingTime // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
      isBooked: isBooked == freezed
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool,
      isReserved: isReserved == freezed
          ? _value.isReserved
          : isReserved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Schedule implements _Schedule {
  const _$_Schedule(
      {required this.scheduleId,
      required this.tutorId,
      required this.meetingTime,
      required this.isBooked,
      required this.isReserved});

  @override
  final String scheduleId;
  @override
  final String tutorId;
  @override
  final DateTimeRange meetingTime;
  @override
  final bool isBooked;
  @override
  final bool isReserved;

  @override
  String toString() {
    return 'Schedule(scheduleId: $scheduleId, tutorId: $tutorId, meetingTime: $meetingTime, isBooked: $isBooked, isReserved: $isReserved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Schedule &&
            const DeepCollectionEquality()
                .equals(other.scheduleId, scheduleId) &&
            const DeepCollectionEquality().equals(other.tutorId, tutorId) &&
            const DeepCollectionEquality()
                .equals(other.meetingTime, meetingTime) &&
            const DeepCollectionEquality().equals(other.isBooked, isBooked) &&
            const DeepCollectionEquality()
                .equals(other.isReserved, isReserved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scheduleId),
      const DeepCollectionEquality().hash(tutorId),
      const DeepCollectionEquality().hash(meetingTime),
      const DeepCollectionEquality().hash(isBooked),
      const DeepCollectionEquality().hash(isReserved));

  @JsonKey(ignore: true)
  @override
  _$ScheduleCopyWith<_Schedule> get copyWith =>
      __$ScheduleCopyWithImpl<_Schedule>(this, _$identity);
}

abstract class _Schedule implements Schedule {
  const factory _Schedule(
      {required String scheduleId,
      required String tutorId,
      required DateTimeRange meetingTime,
      required bool isBooked,
      required bool isReserved}) = _$_Schedule;

  @override
  String get scheduleId;
  @override
  String get tutorId;
  @override
  DateTimeRange get meetingTime;
  @override
  bool get isBooked;
  @override
  bool get isReserved;
  @override
  @JsonKey(ignore: true)
  _$ScheduleCopyWith<_Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}
