// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentDetailsDto _$$_AppointmentDetailsDtoFromJson(
        Map<String, dynamic> json) =>
    _$_AppointmentDetailsDto(
      startPeriodTimestamp: json['startPeriodTimestamp'] as int,
      endPeriodTimestamp: json['endPeriodTimestamp'] as int,
      id: json['id'] as String,
      scheduleId: json['scheduleId'] as String,
      startPeriod: json['startPeriod'] as String,
      endPeriod: json['endPeriod'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      scheduleInfo: ScheduleInfoDto.fromJson(
          json['scheduleInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppointmentDetailsDtoToJson(
        _$_AppointmentDetailsDto instance) =>
    <String, dynamic>{
      'startPeriodTimestamp': instance.startPeriodTimestamp,
      'endPeriodTimestamp': instance.endPeriodTimestamp,
      'id': instance.id,
      'scheduleId': instance.scheduleId,
      'startPeriod': instance.startPeriod,
      'endPeriod': instance.endPeriod,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'scheduleInfo': instance.scheduleInfo,
    };
