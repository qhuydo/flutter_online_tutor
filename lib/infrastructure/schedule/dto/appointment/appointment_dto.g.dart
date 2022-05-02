// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentDto _$$_AppointmentDtoFromJson(Map<String, dynamic> json) =>
    _$_AppointmentDto(
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppointmentDtoToJson(_$_AppointmentDto instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      count: json['count'] as int,
      rows: (json['rows'] as List<dynamic>)
          .map((e) => Row.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'count': instance.count,
      'rows': instance.rows,
    };

_$_Row _$$_RowFromJson(Map<String, dynamic> json) => _$_Row(
      createdAtTimeStamp: json['createdAtTimeStamp'] as int,
      updatedAtTimeStamp: json['updatedAtTimeStamp'] as int,
      id: json['id'] as String,
      userId: json['userId'] as String,
      scheduleDetailId: json['scheduleDetailId'] as String,
      studentMeetingLink: json['studentMeetingLink'] as String,
      studentRequest: json['studentRequest'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      recordUrl: json['recordUrl'] as String?,
      isDeleted: json['isDeleted'] as bool,
      scheduleDetailInfo: AppointmentDetailsDto.fromJson(
          json['scheduleDetailInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RowToJson(_$_Row instance) => <String, dynamic>{
      'createdAtTimeStamp': instance.createdAtTimeStamp,
      'updatedAtTimeStamp': instance.updatedAtTimeStamp,
      'id': instance.id,
      'userId': instance.userId,
      'scheduleDetailId': instance.scheduleDetailId,
      'studentMeetingLink': instance.studentMeetingLink,
      'studentRequest': instance.studentRequest,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'recordUrl': instance.recordUrl,
      'isDeleted': instance.isDeleted,
      'scheduleDetailInfo': instance.scheduleDetailInfo,
    };
