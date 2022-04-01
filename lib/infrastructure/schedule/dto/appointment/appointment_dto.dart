// To parse this JSON data, do
import 'package:freezed_annotation/freezed_annotation.dart';

import 'appointment_details/appointment_details_dto.dart';

part 'appointment_dto.freezed.dart';
part 'appointment_dto.g.dart';

@freezed
class AppointmentDto with _$AppointmentDto {
  const factory AppointmentDto({
    // String message,
    required Data data,
  }) = _AppointmentDto;

  factory AppointmentDto.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDtoFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required int count,
    required List<Row> rows,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Row with _$Row {
  const factory Row({
    required int createdAtTimeStamp,
    required int updatedAtTimeStamp,
    required String id,
    required String userId,
    required String scheduleDetailId,
    // String tutorMeetingLink,
    required String studentMeetingLink,
    required String studentRequest,
    // String? tutorReview,
    // String? scoreByTutor,
    required DateTime createdAt,
    required DateTime updatedAt,
    // String? recordUrl,
    required bool isDeleted,
    required AppointmentDetailsDto scheduleDetailInfo,
    // bool showRecordUrl,
    // List<dynamic> studentMaterials,
  }) = _Row;

  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);
}