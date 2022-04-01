// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleInfo _$$_ScheduleInfoFromJson(Map<String, dynamic> json) =>
    _$_ScheduleInfo(
      date: DateTime.parse(json['date'] as String),
      startTimestamp: json['startTimestamp'] as int,
      endTimestamp: json['endTimestamp'] as int,
      id: json['id'] as String,
      tutorId: json['tutorId'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      tutorInfo:
          TutorInfoDto.fromJson(json['tutorInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ScheduleInfoToJson(_$_ScheduleInfo instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'startTimestamp': instance.startTimestamp,
      'endTimestamp': instance.endTimestamp,
      'id': instance.id,
      'tutorId': instance.tutorId,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'tutorInfo': instance.tutorInfo,
    };
