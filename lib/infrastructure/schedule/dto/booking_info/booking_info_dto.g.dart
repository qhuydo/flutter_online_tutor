// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookingInfoDto _$$_BookingInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_BookingInfoDto(
      createdAtTimeStamp: json['createdAtTimeStamp'] as int,
      updatedAtTimeStamp: json['updatedAtTimeStamp'] as int,
      id: json['id'] as String,
      userId: json['userId'] as String,
      scheduleDetailId: json['scheduleDetailId'] as String,
      tutorMeetingLink: json['tutorMeetingLink'] as String,
      studentMeetingLink: json['studentMeetingLink'] as String,
      studentRequest: json['studentRequest'] as String,
      tutorReview: json['tutorReview'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      recordUrl: json['recordUrl'] as String?,
      isDeleted: json['isDeleted'] as bool,
    );

Map<String, dynamic> _$$_BookingInfoDtoToJson(_$_BookingInfoDto instance) =>
    <String, dynamic>{
      'createdAtTimeStamp': instance.createdAtTimeStamp,
      'updatedAtTimeStamp': instance.updatedAtTimeStamp,
      'id': instance.id,
      'userId': instance.userId,
      'scheduleDetailId': instance.scheduleDetailId,
      'tutorMeetingLink': instance.tutorMeetingLink,
      'studentMeetingLink': instance.studentMeetingLink,
      'studentRequest': instance.studentRequest,
      'tutorReview': instance.tutorReview,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'recordUrl': instance.recordUrl,
      'isDeleted': instance.isDeleted,
    };
