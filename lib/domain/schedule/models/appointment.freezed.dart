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
      {required String scheduleId,
      required String bookId,
      required String tutorId,
      required DateTimeRange meetingTime,
      required String studentRequest,
      required String tutorName,
      String? tutorAvatar,
      Country? tutorCountry}) {
    return _Appointment(
      scheduleId: scheduleId,
      bookId: bookId,
      tutorId: tutorId,
      meetingTime: meetingTime,
      studentRequest: studentRequest,
      tutorName: tutorName,
      tutorAvatar: tutorAvatar,
      tutorCountry: tutorCountry,
    );
  }
}

/// @nodoc
const $Appointment = _$AppointmentTearOff();

/// @nodoc
mixin _$Appointment {
  String get scheduleId => throw _privateConstructorUsedError;
  String get bookId => throw _privateConstructorUsedError;
  String get tutorId => throw _privateConstructorUsedError;
  DateTimeRange get meetingTime => throw _privateConstructorUsedError;
  String get studentRequest => throw _privateConstructorUsedError;
  String get tutorName => throw _privateConstructorUsedError;
  String? get tutorAvatar => throw _privateConstructorUsedError;
  Country? get tutorCountry => throw _privateConstructorUsedError;

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
      {String scheduleId,
      String bookId,
      String tutorId,
      DateTimeRange meetingTime,
      String studentRequest,
      String tutorName,
      String? tutorAvatar,
      Country? tutorCountry});

  $CountryCopyWith<$Res>? get tutorCountry;
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res> implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  final Appointment _value;
  // ignore: unused_field
  final $Res Function(Appointment) _then;

  @override
  $Res call({
    Object? scheduleId = freezed,
    Object? bookId = freezed,
    Object? tutorId = freezed,
    Object? meetingTime = freezed,
    Object? studentRequest = freezed,
    Object? tutorName = freezed,
    Object? tutorAvatar = freezed,
    Object? tutorCountry = freezed,
  }) {
    return _then(_value.copyWith(
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
      tutorAvatar: tutorAvatar == freezed
          ? _value.tutorAvatar
          : tutorAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorCountry: tutorCountry == freezed
          ? _value.tutorCountry
          : tutorCountry // ignore: cast_nullable_to_non_nullable
              as Country?,
    ));
  }

  @override
  $CountryCopyWith<$Res>? get tutorCountry {
    if (_value.tutorCountry == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.tutorCountry!, (value) {
      return _then(_value.copyWith(tutorCountry: value));
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
      {String scheduleId,
      String bookId,
      String tutorId,
      DateTimeRange meetingTime,
      String studentRequest,
      String tutorName,
      String? tutorAvatar,
      Country? tutorCountry});

  @override
  $CountryCopyWith<$Res>? get tutorCountry;
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
    Object? scheduleId = freezed,
    Object? bookId = freezed,
    Object? tutorId = freezed,
    Object? meetingTime = freezed,
    Object? studentRequest = freezed,
    Object? tutorName = freezed,
    Object? tutorAvatar = freezed,
    Object? tutorCountry = freezed,
  }) {
    return _then(_Appointment(
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
      tutorAvatar: tutorAvatar == freezed
          ? _value.tutorAvatar
          : tutorAvatar // ignore: cast_nullable_to_non_nullable
              as String?,
      tutorCountry: tutorCountry == freezed
          ? _value.tutorCountry
          : tutorCountry // ignore: cast_nullable_to_non_nullable
              as Country?,
    ));
  }
}

/// @nodoc

class _$_Appointment implements _Appointment {
  const _$_Appointment(
      {required this.scheduleId,
      required this.bookId,
      required this.tutorId,
      required this.meetingTime,
      required this.studentRequest,
      required this.tutorName,
      this.tutorAvatar,
      this.tutorCountry});

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
  final String? tutorAvatar;
  @override
  final Country? tutorCountry;

  @override
  String toString() {
    return 'Appointment(scheduleId: $scheduleId, bookId: $bookId, tutorId: $tutorId, meetingTime: $meetingTime, studentRequest: $studentRequest, tutorName: $tutorName, tutorAvatar: $tutorAvatar, tutorCountry: $tutorCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Appointment &&
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
                .equals(other.tutorAvatar, tutorAvatar) &&
            const DeepCollectionEquality()
                .equals(other.tutorCountry, tutorCountry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(scheduleId),
      const DeepCollectionEquality().hash(bookId),
      const DeepCollectionEquality().hash(tutorId),
      const DeepCollectionEquality().hash(meetingTime),
      const DeepCollectionEquality().hash(studentRequest),
      const DeepCollectionEquality().hash(tutorName),
      const DeepCollectionEquality().hash(tutorAvatar),
      const DeepCollectionEquality().hash(tutorCountry));

  @JsonKey(ignore: true)
  @override
  _$AppointmentCopyWith<_Appointment> get copyWith =>
      __$AppointmentCopyWithImpl<_Appointment>(this, _$identity);
}

abstract class _Appointment implements Appointment {
  const factory _Appointment(
      {required String scheduleId,
      required String bookId,
      required String tutorId,
      required DateTimeRange meetingTime,
      required String studentRequest,
      required String tutorName,
      String? tutorAvatar,
      Country? tutorCountry}) = _$_Appointment;

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
  String? get tutorAvatar;
  @override
  Country? get tutorCountry;
  @override
  @JsonKey(ignore: true)
  _$AppointmentCopyWith<_Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}
