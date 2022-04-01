// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tutor_schedule_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TutorScheduleDto _$TutorScheduleDtoFromJson(Map<String, dynamic> json) {
  return _TutorScheduleDto.fromJson(json);
}

/// @nodoc
class _$TutorScheduleDtoTearOff {
  const _$TutorScheduleDtoTearOff();

  _TutorScheduleDto call(
      {required String id,
      required String tutorId,
      required String startTime,
      required String endTime,
      required int startTimestamp,
      required int endTimestamp,
      required DateTime createdAt,
      required bool isBooked,
      required List<ScheduleDetailDto> scheduleDetails}) {
    return _TutorScheduleDto(
      id: id,
      tutorId: tutorId,
      startTime: startTime,
      endTime: endTime,
      startTimestamp: startTimestamp,
      endTimestamp: endTimestamp,
      createdAt: createdAt,
      isBooked: isBooked,
      scheduleDetails: scheduleDetails,
    );
  }

  TutorScheduleDto fromJson(Map<String, Object?> json) {
    return TutorScheduleDto.fromJson(json);
  }
}

/// @nodoc
const $TutorScheduleDto = _$TutorScheduleDtoTearOff();

/// @nodoc
mixin _$TutorScheduleDto {
  String get id => throw _privateConstructorUsedError;
  String get tutorId => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  int get startTimestamp => throw _privateConstructorUsedError;
  int get endTimestamp => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isBooked => throw _privateConstructorUsedError;
  List<ScheduleDetailDto> get scheduleDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TutorScheduleDtoCopyWith<TutorScheduleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TutorScheduleDtoCopyWith<$Res> {
  factory $TutorScheduleDtoCopyWith(
          TutorScheduleDto value, $Res Function(TutorScheduleDto) then) =
      _$TutorScheduleDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String tutorId,
      String startTime,
      String endTime,
      int startTimestamp,
      int endTimestamp,
      DateTime createdAt,
      bool isBooked,
      List<ScheduleDetailDto> scheduleDetails});
}

/// @nodoc
class _$TutorScheduleDtoCopyWithImpl<$Res>
    implements $TutorScheduleDtoCopyWith<$Res> {
  _$TutorScheduleDtoCopyWithImpl(this._value, this._then);

  final TutorScheduleDto _value;
  // ignore: unused_field
  final $Res Function(TutorScheduleDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? tutorId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? createdAt = freezed,
    Object? isBooked = freezed,
    Object? scheduleDetails = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tutorId: tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      endTimestamp: endTimestamp == freezed
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isBooked: isBooked == freezed
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool,
      scheduleDetails: scheduleDetails == freezed
          ? _value.scheduleDetails
          : scheduleDetails // ignore: cast_nullable_to_non_nullable
              as List<ScheduleDetailDto>,
    ));
  }
}

/// @nodoc
abstract class _$TutorScheduleDtoCopyWith<$Res>
    implements $TutorScheduleDtoCopyWith<$Res> {
  factory _$TutorScheduleDtoCopyWith(
          _TutorScheduleDto value, $Res Function(_TutorScheduleDto) then) =
      __$TutorScheduleDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String tutorId,
      String startTime,
      String endTime,
      int startTimestamp,
      int endTimestamp,
      DateTime createdAt,
      bool isBooked,
      List<ScheduleDetailDto> scheduleDetails});
}

/// @nodoc
class __$TutorScheduleDtoCopyWithImpl<$Res>
    extends _$TutorScheduleDtoCopyWithImpl<$Res>
    implements _$TutorScheduleDtoCopyWith<$Res> {
  __$TutorScheduleDtoCopyWithImpl(
      _TutorScheduleDto _value, $Res Function(_TutorScheduleDto) _then)
      : super(_value, (v) => _then(v as _TutorScheduleDto));

  @override
  _TutorScheduleDto get _value => super._value as _TutorScheduleDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? tutorId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? createdAt = freezed,
    Object? isBooked = freezed,
    Object? scheduleDetails = freezed,
  }) {
    return _then(_TutorScheduleDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      tutorId: tutorId == freezed
          ? _value.tutorId
          : tutorId // ignore: cast_nullable_to_non_nullable
              as String,
      startTime: startTime == freezed
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String,
      endTime: endTime == freezed
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      endTimestamp: endTimestamp == freezed
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isBooked: isBooked == freezed
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as bool,
      scheduleDetails: scheduleDetails == freezed
          ? _value.scheduleDetails
          : scheduleDetails // ignore: cast_nullable_to_non_nullable
              as List<ScheduleDetailDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TutorScheduleDto implements _TutorScheduleDto {
  const _$_TutorScheduleDto(
      {required this.id,
      required this.tutorId,
      required this.startTime,
      required this.endTime,
      required this.startTimestamp,
      required this.endTimestamp,
      required this.createdAt,
      required this.isBooked,
      required this.scheduleDetails});

  factory _$_TutorScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$$_TutorScheduleDtoFromJson(json);

  @override
  final String id;
  @override
  final String tutorId;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final int startTimestamp;
  @override
  final int endTimestamp;
  @override
  final DateTime createdAt;
  @override
  final bool isBooked;
  @override
  final List<ScheduleDetailDto> scheduleDetails;

  @override
  String toString() {
    return 'TutorScheduleDto(id: $id, tutorId: $tutorId, startTime: $startTime, endTime: $endTime, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, createdAt: $createdAt, isBooked: $isBooked, scheduleDetails: $scheduleDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TutorScheduleDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.tutorId, tutorId) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality()
                .equals(other.startTimestamp, startTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.endTimestamp, endTimestamp) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.isBooked, isBooked) &&
            const DeepCollectionEquality()
                .equals(other.scheduleDetails, scheduleDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(tutorId),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(startTimestamp),
      const DeepCollectionEquality().hash(endTimestamp),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(isBooked),
      const DeepCollectionEquality().hash(scheduleDetails));

  @JsonKey(ignore: true)
  @override
  _$TutorScheduleDtoCopyWith<_TutorScheduleDto> get copyWith =>
      __$TutorScheduleDtoCopyWithImpl<_TutorScheduleDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TutorScheduleDtoToJson(this);
  }
}

abstract class _TutorScheduleDto implements TutorScheduleDto {
  const factory _TutorScheduleDto(
      {required String id,
      required String tutorId,
      required String startTime,
      required String endTime,
      required int startTimestamp,
      required int endTimestamp,
      required DateTime createdAt,
      required bool isBooked,
      required List<ScheduleDetailDto> scheduleDetails}) = _$_TutorScheduleDto;

  factory _TutorScheduleDto.fromJson(Map<String, dynamic> json) =
      _$_TutorScheduleDto.fromJson;

  @override
  String get id;
  @override
  String get tutorId;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  int get startTimestamp;
  @override
  int get endTimestamp;
  @override
  DateTime get createdAt;
  @override
  bool get isBooked;
  @override
  List<ScheduleDetailDto> get scheduleDetails;
  @override
  @JsonKey(ignore: true)
  _$TutorScheduleDtoCopyWith<_TutorScheduleDto> get copyWith =>
      throw _privateConstructorUsedError;
}
