// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleDetailDto _$$_ScheduleDetailDtoFromJson(Map<String, dynamic> json) =>
    _$_ScheduleDetailDto(
      startPeriodTimestamp: json['startPeriodTimestamp'] as int,
      endPeriodTimestamp: json['endPeriodTimestamp'] as int,
      id: json['id'] as String,
      scheduleId: json['scheduleId'] as String,
      startPeriod: json['startPeriod'] as String,
      endPeriod: json['endPeriod'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      bookingInfo: (json['bookingInfo'] as List<dynamic>)
          .map((e) => BookingInfoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      isBooked: json['isBooked'] as bool,
    );

Map<String, dynamic> _$$_ScheduleDetailDtoToJson(
        _$_ScheduleDetailDto instance) =>
    <String, dynamic>{
      'startPeriodTimestamp': instance.startPeriodTimestamp,
      'endPeriodTimestamp': instance.endPeriodTimestamp,
      'id': instance.id,
      'scheduleId': instance.scheduleId,
      'startPeriod': instance.startPeriod,
      'endPeriod': instance.endPeriod,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'bookingInfo': instance.bookingInfo,
      'isBooked': instance.isBooked,
    };
