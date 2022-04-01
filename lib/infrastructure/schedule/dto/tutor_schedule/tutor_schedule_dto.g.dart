// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tutor_schedule_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TutorScheduleDto _$$_TutorScheduleDtoFromJson(Map<String, dynamic> json) =>
    _$_TutorScheduleDto(
      id: json['id'] as String,
      tutorId: json['tutorId'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      startTimestamp: json['startTimestamp'] as int,
      endTimestamp: json['endTimestamp'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isBooked: json['isBooked'] as bool,
      scheduleDetails: (json['scheduleDetails'] as List<dynamic>)
          .map((e) => ScheduleDetailDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TutorScheduleDtoToJson(_$_TutorScheduleDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tutorId': instance.tutorId,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'startTimestamp': instance.startTimestamp,
      'endTimestamp': instance.endTimestamp,
      'createdAt': instance.createdAt.toIso8601String(),
      'isBooked': instance.isBooked,
      'scheduleDetails': instance.scheduleDetails,
    };
