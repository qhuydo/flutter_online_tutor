// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppointmentDetailsDto _$AppointmentDetailsDtoFromJson(
    Map<String, dynamic> json) {
  return _AppointmentDetailsDto.fromJson(json);
}

/// @nodoc
class _$AppointmentDetailsDtoTearOff {
  const _$AppointmentDetailsDtoTearOff();

  _AppointmentDetailsDto call(
      {required int startPeriodTimestamp,
      required int endPeriodTimestamp,
      required String id,
      required String scheduleId,
      required String startPeriod,
      required String endPeriod,
      required DateTime createdAt,
      required DateTime updatedAt,
      required ScheduleInfoDto scheduleInfo}) {
    return _AppointmentDetailsDto(
      startPeriodTimestamp: startPeriodTimestamp,
      endPeriodTimestamp: endPeriodTimestamp,
      id: id,
      scheduleId: scheduleId,
      startPeriod: startPeriod,
      endPeriod: endPeriod,
      createdAt: createdAt,
      updatedAt: updatedAt,
      scheduleInfo: scheduleInfo,
    );
  }

  AppointmentDetailsDto fromJson(Map<String, Object?> json) {
    return AppointmentDetailsDto.fromJson(json);
  }
}

/// @nodoc
const $AppointmentDetailsDto = _$AppointmentDetailsDtoTearOff();

/// @nodoc
mixin _$AppointmentDetailsDto {
  int get startPeriodTimestamp => throw _privateConstructorUsedError;
  int get endPeriodTimestamp => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get scheduleId => throw _privateConstructorUsedError;
  String get startPeriod => throw _privateConstructorUsedError;
  String get endPeriod => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  ScheduleInfoDto get scheduleInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentDetailsDtoCopyWith<AppointmentDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDetailsDtoCopyWith<$Res> {
  factory $AppointmentDetailsDtoCopyWith(AppointmentDetailsDto value,
          $Res Function(AppointmentDetailsDto) then) =
      _$AppointmentDetailsDtoCopyWithImpl<$Res>;
  $Res call(
      {int startPeriodTimestamp,
      int endPeriodTimestamp,
      String id,
      String scheduleId,
      String startPeriod,
      String endPeriod,
      DateTime createdAt,
      DateTime updatedAt,
      ScheduleInfoDto scheduleInfo});

  $ScheduleInfoDtoCopyWith<$Res> get scheduleInfo;
}

/// @nodoc
class _$AppointmentDetailsDtoCopyWithImpl<$Res>
    implements $AppointmentDetailsDtoCopyWith<$Res> {
  _$AppointmentDetailsDtoCopyWithImpl(this._value, this._then);

  final AppointmentDetailsDto _value;
  // ignore: unused_field
  final $Res Function(AppointmentDetailsDto) _then;

  @override
  $Res call({
    Object? startPeriodTimestamp = freezed,
    Object? endPeriodTimestamp = freezed,
    Object? id = freezed,
    Object? scheduleId = freezed,
    Object? startPeriod = freezed,
    Object? endPeriod = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? scheduleInfo = freezed,
  }) {
    return _then(_value.copyWith(
      startPeriodTimestamp: startPeriodTimestamp == freezed
          ? _value.startPeriodTimestamp
          : startPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      endPeriodTimestamp: endPeriodTimestamp == freezed
          ? _value.endPeriodTimestamp
          : endPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      startPeriod: startPeriod == freezed
          ? _value.startPeriod
          : startPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      endPeriod: endPeriod == freezed
          ? _value.endPeriod
          : endPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleInfo: scheduleInfo == freezed
          ? _value.scheduleInfo
          : scheduleInfo // ignore: cast_nullable_to_non_nullable
              as ScheduleInfoDto,
    ));
  }

  @override
  $ScheduleInfoDtoCopyWith<$Res> get scheduleInfo {
    return $ScheduleInfoDtoCopyWith<$Res>(_value.scheduleInfo, (value) {
      return _then(_value.copyWith(scheduleInfo: value));
    });
  }
}

/// @nodoc
abstract class _$AppointmentDetailsDtoCopyWith<$Res>
    implements $AppointmentDetailsDtoCopyWith<$Res> {
  factory _$AppointmentDetailsDtoCopyWith(_AppointmentDetailsDto value,
          $Res Function(_AppointmentDetailsDto) then) =
      __$AppointmentDetailsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int startPeriodTimestamp,
      int endPeriodTimestamp,
      String id,
      String scheduleId,
      String startPeriod,
      String endPeriod,
      DateTime createdAt,
      DateTime updatedAt,
      ScheduleInfoDto scheduleInfo});

  @override
  $ScheduleInfoDtoCopyWith<$Res> get scheduleInfo;
}

/// @nodoc
class __$AppointmentDetailsDtoCopyWithImpl<$Res>
    extends _$AppointmentDetailsDtoCopyWithImpl<$Res>
    implements _$AppointmentDetailsDtoCopyWith<$Res> {
  __$AppointmentDetailsDtoCopyWithImpl(_AppointmentDetailsDto _value,
      $Res Function(_AppointmentDetailsDto) _then)
      : super(_value, (v) => _then(v as _AppointmentDetailsDto));

  @override
  _AppointmentDetailsDto get _value => super._value as _AppointmentDetailsDto;

  @override
  $Res call({
    Object? startPeriodTimestamp = freezed,
    Object? endPeriodTimestamp = freezed,
    Object? id = freezed,
    Object? scheduleId = freezed,
    Object? startPeriod = freezed,
    Object? endPeriod = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? scheduleInfo = freezed,
  }) {
    return _then(_AppointmentDetailsDto(
      startPeriodTimestamp: startPeriodTimestamp == freezed
          ? _value.startPeriodTimestamp
          : startPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      endPeriodTimestamp: endPeriodTimestamp == freezed
          ? _value.endPeriodTimestamp
          : endPeriodTimestamp // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      scheduleId: scheduleId == freezed
          ? _value.scheduleId
          : scheduleId // ignore: cast_nullable_to_non_nullable
              as String,
      startPeriod: startPeriod == freezed
          ? _value.startPeriod
          : startPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      endPeriod: endPeriod == freezed
          ? _value.endPeriod
          : endPeriod // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      scheduleInfo: scheduleInfo == freezed
          ? _value.scheduleInfo
          : scheduleInfo // ignore: cast_nullable_to_non_nullable
              as ScheduleInfoDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentDetailsDto implements _AppointmentDetailsDto {
  const _$_AppointmentDetailsDto(
      {required this.startPeriodTimestamp,
      required this.endPeriodTimestamp,
      required this.id,
      required this.scheduleId,
      required this.startPeriod,
      required this.endPeriod,
      required this.createdAt,
      required this.updatedAt,
      required this.scheduleInfo});

  factory _$_AppointmentDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentDetailsDtoFromJson(json);

  @override
  final int startPeriodTimestamp;
  @override
  final int endPeriodTimestamp;
  @override
  final String id;
  @override
  final String scheduleId;
  @override
  final String startPeriod;
  @override
  final String endPeriod;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final ScheduleInfoDto scheduleInfo;

  @override
  String toString() {
    return 'AppointmentDetailsDto(startPeriodTimestamp: $startPeriodTimestamp, endPeriodTimestamp: $endPeriodTimestamp, id: $id, scheduleId: $scheduleId, startPeriod: $startPeriod, endPeriod: $endPeriod, createdAt: $createdAt, updatedAt: $updatedAt, scheduleInfo: $scheduleInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentDetailsDto &&
            const DeepCollectionEquality()
                .equals(other.startPeriodTimestamp, startPeriodTimestamp) &&
            const DeepCollectionEquality()
                .equals(other.endPeriodTimestamp, endPeriodTimestamp) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.scheduleId, scheduleId) &&
            const DeepCollectionEquality()
                .equals(other.startPeriod, startPeriod) &&
            const DeepCollectionEquality().equals(other.endPeriod, endPeriod) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality()
                .equals(other.scheduleInfo, scheduleInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startPeriodTimestamp),
      const DeepCollectionEquality().hash(endPeriodTimestamp),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(scheduleId),
      const DeepCollectionEquality().hash(startPeriod),
      const DeepCollectionEquality().hash(endPeriod),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(scheduleInfo));

  @JsonKey(ignore: true)
  @override
  _$AppointmentDetailsDtoCopyWith<_AppointmentDetailsDto> get copyWith =>
      __$AppointmentDetailsDtoCopyWithImpl<_AppointmentDetailsDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentDetailsDtoToJson(this);
  }
}

abstract class _AppointmentDetailsDto implements AppointmentDetailsDto {
  const factory _AppointmentDetailsDto(
      {required int startPeriodTimestamp,
      required int endPeriodTimestamp,
      required String id,
      required String scheduleId,
      required String startPeriod,
      required String endPeriod,
      required DateTime createdAt,
      required DateTime updatedAt,
      required ScheduleInfoDto scheduleInfo}) = _$_AppointmentDetailsDto;

  factory _AppointmentDetailsDto.fromJson(Map<String, dynamic> json) =
      _$_AppointmentDetailsDto.fromJson;

  @override
  int get startPeriodTimestamp;
  @override
  int get endPeriodTimestamp;
  @override
  String get id;
  @override
  String get scheduleId;
  @override
  String get startPeriod;
  @override
  String get endPeriod;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  ScheduleInfoDto get scheduleInfo;
  @override
  @JsonKey(ignore: true)
  _$AppointmentDetailsDtoCopyWith<_AppointmentDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
