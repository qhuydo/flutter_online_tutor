// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleInfoDto _$ScheduleInfoDtoFromJson(Map<String, dynamic> json) {
  return _ScheduleInfo.fromJson(json);
}

/// @nodoc
class _$ScheduleInfoDtoTearOff {
  const _$ScheduleInfoDtoTearOff();

  _ScheduleInfo call(
      {required DateTime date,
      required int startTimestamp,
      required int endTimestamp,
      required String id,
      required String tutorId,
      required String startTime,
      required String endTime,
      required DateTime createdAt,
      required DateTime updatedAt,
      required TutorInfoDto tutorInfo}) {
    return _ScheduleInfo(
      date: date,
      startTimestamp: startTimestamp,
      endTimestamp: endTimestamp,
      id: id,
      tutorId: tutorId,
      startTime: startTime,
      endTime: endTime,
      createdAt: createdAt,
      updatedAt: updatedAt,
      tutorInfo: tutorInfo,
    );
  }

  ScheduleInfoDto fromJson(Map<String, Object?> json) {
    return ScheduleInfoDto.fromJson(json);
  }
}

/// @nodoc
const $ScheduleInfoDto = _$ScheduleInfoDtoTearOff();

/// @nodoc
mixin _$ScheduleInfoDto {
  DateTime get date => throw _privateConstructorUsedError;
  int get startTimestamp => throw _privateConstructorUsedError;
  int get endTimestamp => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get tutorId => throw _privateConstructorUsedError;
  String get startTime => throw _privateConstructorUsedError;
  String get endTime => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  TutorInfoDto get tutorInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleInfoDtoCopyWith<ScheduleInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleInfoDtoCopyWith<$Res> {
  factory $ScheduleInfoDtoCopyWith(
          ScheduleInfoDto value, $Res Function(ScheduleInfoDto) then) =
      _$ScheduleInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      int startTimestamp,
      int endTimestamp,
      String id,
      String tutorId,
      String startTime,
      String endTime,
      DateTime createdAt,
      DateTime updatedAt,
      TutorInfoDto tutorInfo});

  $TutorInfoDtoCopyWith<$Res> get tutorInfo;
}

/// @nodoc
class _$ScheduleInfoDtoCopyWithImpl<$Res>
    implements $ScheduleInfoDtoCopyWith<$Res> {
  _$ScheduleInfoDtoCopyWithImpl(this._value, this._then);

  final ScheduleInfoDto _value;
  // ignore: unused_field
  final $Res Function(ScheduleInfoDto) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? id = freezed,
    Object? tutorId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tutorInfo = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      endTimestamp: endTimestamp == freezed
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
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
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tutorInfo: tutorInfo == freezed
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as TutorInfoDto,
    ));
  }

  @override
  $TutorInfoDtoCopyWith<$Res> get tutorInfo {
    return $TutorInfoDtoCopyWith<$Res>(_value.tutorInfo, (value) {
      return _then(_value.copyWith(tutorInfo: value));
    });
  }
}

/// @nodoc
abstract class _$ScheduleInfoCopyWith<$Res>
    implements $ScheduleInfoDtoCopyWith<$Res> {
  factory _$ScheduleInfoCopyWith(
          _ScheduleInfo value, $Res Function(_ScheduleInfo) then) =
      __$ScheduleInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      int startTimestamp,
      int endTimestamp,
      String id,
      String tutorId,
      String startTime,
      String endTime,
      DateTime createdAt,
      DateTime updatedAt,
      TutorInfoDto tutorInfo});

  @override
  $TutorInfoDtoCopyWith<$Res> get tutorInfo;
}

/// @nodoc
class __$ScheduleInfoCopyWithImpl<$Res>
    extends _$ScheduleInfoDtoCopyWithImpl<$Res>
    implements _$ScheduleInfoCopyWith<$Res> {
  __$ScheduleInfoCopyWithImpl(
      _ScheduleInfo _value, $Res Function(_ScheduleInfo) _then)
      : super(_value, (v) => _then(v as _ScheduleInfo));

  @override
  _ScheduleInfo get _value => super._value as _ScheduleInfo;

  @override
  $Res call({
    Object? date = freezed,
    Object? startTimestamp = freezed,
    Object? endTimestamp = freezed,
    Object? id = freezed,
    Object? tutorId = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? tutorInfo = freezed,
  }) {
    return _then(_ScheduleInfo(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTimestamp: startTimestamp == freezed
          ? _value.startTimestamp
          : startTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      endTimestamp: endTimestamp == freezed
          ? _value.endTimestamp
          : endTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
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
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tutorInfo: tutorInfo == freezed
          ? _value.tutorInfo
          : tutorInfo // ignore: cast_nullable_to_non_nullable
              as TutorInfoDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleInfo implements _ScheduleInfo {
  const _$_ScheduleInfo(
      {required this.date,
      required this.startTimestamp,
      required this.endTimestamp,
      required this.id,
      required this.tutorId,
      required this.startTime,
      required this.endTime,
      required this.createdAt,
      required this.updatedAt,
      required this.tutorInfo});

  factory _$_ScheduleInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleInfoFromJson(json);

  @override
  final DateTime date;
  @override
  final int startTimestamp;
  @override
  final int endTimestamp;
  @override
  final String id;
  @override
  final String tutorId;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final TutorInfoDto tutorInfo;

  @override
  String toString() {
    return 'ScheduleInfoDto(date: $date, startTimestamp: $startTimestamp, endTimestamp: $endTimestamp, id: $id, tutorId: $tutorId, startTime: $startTime, endTime: $endTime, createdAt: $createdAt, updatedAt: $updatedAt, tutorInfo: $tutorInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScheduleInfo &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.startTimestamp, startTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.endTimestamp, endTimestamp) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.tutorId, tutorId) &&
            const DeepCollectionEquality().equals(other.startTime, startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.tutorInfo, tutorInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(startTimestamp),
      const DeepCollectionEquality().hash(endTimestamp),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(tutorId),
      const DeepCollectionEquality().hash(startTime),
      const DeepCollectionEquality().hash(endTime),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(tutorInfo));

  @JsonKey(ignore: true)
  @override
  _$ScheduleInfoCopyWith<_ScheduleInfo> get copyWith =>
      __$ScheduleInfoCopyWithImpl<_ScheduleInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleInfoToJson(this);
  }
}

abstract class _ScheduleInfo implements ScheduleInfoDto {
  const factory _ScheduleInfo(
      {required DateTime date,
      required int startTimestamp,
      required int endTimestamp,
      required String id,
      required String tutorId,
      required String startTime,
      required String endTime,
      required DateTime createdAt,
      required DateTime updatedAt,
      required TutorInfoDto tutorInfo}) = _$_ScheduleInfo;

  factory _ScheduleInfo.fromJson(Map<String, dynamic> json) =
      _$_ScheduleInfo.fromJson;

  @override
  DateTime get date;
  @override
  int get startTimestamp;
  @override
  int get endTimestamp;
  @override
  String get id;
  @override
  String get tutorId;
  @override
  String get startTime;
  @override
  String get endTime;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  TutorInfoDto get tutorInfo;
  @override
  @JsonKey(ignore: true)
  _$ScheduleInfoCopyWith<_ScheduleInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
