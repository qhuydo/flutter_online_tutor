// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppointmentTearOff {
  const _$AppointmentTearOff();

  _Appointment call(
      {required String id,
      required String scheduleId,
      required String bookId,
      required String tutorId,
      required DateTimeRange meetingTime,
      required String studentRequest,
      required String tutorName,
      required Country tutorCountry,
      required MeetingRoom meetingRoom,
      String? tutorAvatar}) {
    return _Appointment(
      id: id,
      scheduleId: scheduleId,
      bookId: bookId,
      tutorId: tutorId,
      meetingTime: meetingTime,
      studentRequest: studentRequest,
      tutorName: tutorName,
      tutorCountry: tutorCountry,
      meetingRoom: meetingRoom,
      tutorAvatar: tutorAvatar,
    );
  }
}

/// @nodoc
const $Appointment = _$AppointmentTearOff();

/// @nodoc
mixin _$Appointment {
  String get id => throw _privateConstructorUsedError;
  String get scheduleId => throw _privateConstructorUsedError;
  String get bookId => throw _privateConstructorUsedError;
  String get tutorId => throw _privateConstructorUsedError;
  DateTimeRange get meetingTime => throw _privateConstructorUsedError;
  String get studentRequest => throw _privateConstructorUsedError;
  String get tutorName => throw _privateConstructorUsedError;
  Country get tutorCountry => throw _privateConstructorUsedError;
  MeetingRoom get meetingRoom => throw _privateConstructorUsedError;
  String? get tutorAvatar => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String scheduleId,
      String bookId,
      String tutorId,
      DateTimeRange meetingTime,
      String studentRequest,
      String tutorName,
      Country tutorCountry,
      MeetingRoom meetingRoom,
      String? tutorAvatar});

  $CountryCopyWith<$Res> get tutorCountry;
  $MeetingRoomCopyWith<$Res> get meetingRoom;
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res> implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  final Appointment _value;
  // ignore: unused_field
  final $Res Function(Appointment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? scheduleId = freezed,
    Object? bookId = freezed,
    Object? tutorId = freezed,
    Object? meetingTime = freezed,
    Object? studentRequest = freezed,
    Object? tutorName = freezed,
    Object? tutorCountry = freezed,
    Object? meetingRoom = freezed,
    Object? tutorAvatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: bookId == freezed
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      tutorId: tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      meetingTime: meetingTime == freezed
          ? _value.meetingTime
          : meetingTime // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
      studentRequest: studentRequest == freezed
          ? _value.studentRequest
          : studentRequest // ignore: cast_nullable_to_non_nullable
              as String,
      tutorName: tutorName == freezed
          ? _value.tutorName
          : tutorName // ignore: cast_nullable_to_non_nullable
              as String,
      tutorCountry: tutorCountry == freezed
          ? _value.tutorCountry
          : tutorCountry // ignore: cast_nullable_to_non_nullable
              as Country,
      meetingRoom: meetingRoom == freezed
          ? _value.meetingRoom
          : meetingRoom // ignore: cast_nullable_to_non_nullable
              as MeetingRoom,
      tutorAvatar: tutorAvatar == freezed
          ? _value.tutorAvatar
          : tutorAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $CountryCopyWith<$Res> get tutorCountry {
    return $CountryCopyWith<$Res>(_value.tutorCountry, (value) {
      return _then(_value.copyWith(tutorCountry: value));
    });
  }

  @override
  $MeetingRoomCopyWith<$Res> get meetingRoom {
    return $MeetingRoomCopyWith<$Res>(_value.meetingRoom, (value) {
      return _then(_value.copyWith(meetingRoom: value));
    });
  }
}

/// @nodoc
abstract class _$AppointmentCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$AppointmentCopyWith(
          _Appointment value, $Res Function(_Appointment) then) =
      __$AppointmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String scheduleId,
      String bookId,
      String tutorId,
      DateTimeRange meetingTime,
      String studentRequest,
      String tutorName,
      Country tutorCountry,
      MeetingRoom meetingRoom,
      String? tutorAvatar});

  @override
  $CountryCopyWith<$Res> get tutorCountry;
  @override
  $MeetingRoomCopyWith<$Res> get meetingRoom;
}

/// @nodoc
class __$AppointmentCopyWithImpl<$Res> extends _$AppointmentCopyWithImpl<$Res>
    implements _$AppointmentCopyWith<$Res> {
  __$AppointmentCopyWithImpl(
      _Appointment _value, $Res Function(_Appointment) _then)
      : super(_value, (v) => _then(v as _Appointment));

  @override
  _Appointment get _value => super._value as _Appointment;

  @override
  $Res call({
    Object? id = freezed,
    Object? scheduleId = freezed,
    Object? bookId = freezed,
    Object? tutorId = freezed,
    Object? meetingTime = freezed,
    Object? studentRequest = freezed,
    Object? tutorName = freezed,
    Object? tutorCountry = freezed,
    Object? meetingRoom = freezed,
    Object? tutorAvatar = freezed,
  }) {
    return _then(_Appointment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      bookId: bookId == freezed
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      tutorId: tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      meetingTime: meetingTime == freezed
          ? _value.meetingTime
          : meetingTime // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
      studentRequest: studentRequest == freezed
          ? _value.studentRequest
          : studentRequest // ignore: cast_nullable_to_non_nullable
              as String,
      tutorName: tutorName == freezed
          ? _value.tutorName
          : tutorName // ignore: cast_nullable_to_non_nullable
              as String,
      tutorCountry: tutorCountry == freezed
          ? _value.tutorCountry
          : tutorCountry // ignore: cast_nullable_to_non_nullable
              as Country,
      meetingRoom: meetingRoom == freezed
          ? _value.meetingRoom
          : meetingRoom // ignore: cast_nullable_to_non_nullable
              as MeetingRoom,
      tutorAvatar: tutorAvatar == freezed
          ? _value.tutorAvatar
          : tutorAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Appointment extends _Appointment {
  const _$_Appointment(
      {required this.id,
      required this.scheduleId,
      required this.bookId,
      required this.tutorId,
      required this.meetingTime,
      required this.studentRequest,
      required this.tutorName,
      required this.tutorCountry,
      required this.meetingRoom,
      this.tutorAvatar})
      : super._();

  @override
  final String id;
  @override
  final String scheduleId;
  @override
  final String bookId;
  @override
  final String tutorId;
  @override
  final DateTimeRange meetingTime;
  @override
  final String studentRequest;
  @override
  final String tutorName;
  @override
  final Country tutorCountry;
  @override
  final MeetingRoom meetingRoom;
  @override
  final String? tutorAvatar;

  @override
  String toString() {
    return 'Appointment(id: $id, scheduleId: $scheduleId, bookId: $bookId, tutorId: $tutorId, meetingTime: $meetingTime, studentRequest: $studentRequest, tutorName: $tutorName, tutorCountry: $tutorCountry, meetingRoom: $meetingRoom, tutorAvatar: $tutorAvatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Appointment &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.scheduleId, scheduleId) &&
            const DeepCollectionEquality().equals(other.bookId, bookId) &&
            const DeepCollectionEquality().equals(other.tutorId, tutorId) &&
            const DeepCollectionEquality()
                .equals(other.meetingTime, meetingTime) &&
            const DeepCollectionEquality()
                .equals(other.studentRequest, studentRequest) &&
            const DeepCollectionEquality().equals(other.tutorName, tutorName) &&
            const DeepCollectionEquality()
                .equals(other.tutorCountry, tutorCountry) &&
            const DeepCollectionEquality()
                .equals(other.meetingRoom, meetingRoom) &&
            const DeepCollectionEquality()
                .equals(other.tutorAvatar, tutorAvatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(scheduleId),
      const DeepCollectionEquality().hash(bookId),
      const DeepCollectionEquality().hash(tutorId),
      const DeepCollectionEquality().hash(meetingTime),
      const DeepCollectionEquality().hash(studentRequest),
      const DeepCollectionEquality().hash(tutorName),
      const DeepCollectionEquality().hash(tutorCountry),
      const DeepCollectionEquality().hash(meetingRoom),
      const DeepCollectionEquality().hash(tutorAvatar));

  @JsonKey(ignore: true)
  @override
  _$AppointmentCopyWith<_Appointment> get copyWith =>
      __$AppointmentCopyWithImpl<_Appointment>(this, _$identity);
}

abstract class _Appointment extends Appointment {
  const factory _Appointment(
      {required String id,
      required String scheduleId,
      required String bookId,
      required String tutorId,
      required DateTimeRange meetingTime,
      required String studentRequest,
      required String tutorName,
      required Country tutorCountry,
      required MeetingRoom meetingRoom,
      String? tutorAvatar}) = _$_Appointment;
  const _Appointment._() : super._();

  @override
  String get id;
  @override
  String get scheduleId;
  @override
  String get bookId;
  @override
  String get tutorId;
  @override
  DateTimeRange get meetingTime;
  @override
  String get studentRequest;
  @override
  String get tutorName;
  @override
  Country get tutorCountry;
  @override
  MeetingRoom get meetingRoom;
  @override
  String? get tutorAvatar;
  @override
  @JsonKey(ignore: true)
  _$AppointmentCopyWith<_Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}
