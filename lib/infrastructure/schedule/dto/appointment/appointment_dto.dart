// To parse this JSON data, do
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/common/models/country.dart';
import '../../../../domain/schedule/models/appointment.dart';
import '../../../../presentation/common.dart';
import 'appointment_details/appointment_details_dto.dart';
import 'meeting_room/meeting_room_dto.dart';

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
    required String? studentRequest,
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

extension RowX on Row {
  Appointment toDomain() {
    final token = studentMeetingLink.replaceFirst('/call/?token=', '');
    final tokenData = token.split('.')[1];
    final String encodedMeetingJson = utf8.decode(
      base64Decode(base64.normalize(tokenData)),
    );
    final meetingRoomDto =
        MeetingRoomDto.fromJson(jsonDecode(encodedMeetingJson));
    final meetingRoomDomain = meetingRoomDto.toDomain(token);

    return Appointment(
      scheduleId: scheduleDetailInfo.scheduleId,
      bookId: scheduleDetailInfo.id,
      tutorId: scheduleDetailInfo.scheduleInfo.tutorId,
      meetingTime: DateTimeRange(
        start: DateTime.fromMillisecondsSinceEpoch(
          scheduleDetailInfo.startPeriodTimestamp,
        ),
        end: DateTime.fromMillisecondsSinceEpoch(
          scheduleDetailInfo.endPeriodTimestamp,
        ),
      ),
      studentRequest: studentRequest ?? '',
      tutorCountry: Country.fromIsoCodeOrAntarctica(
        scheduleDetailInfo.scheduleInfo.tutorInfo.country,
      ),
      tutorAvatar: scheduleDetailInfo.scheduleInfo.tutorInfo.avatar,
      tutorName: scheduleDetailInfo.scheduleInfo.tutorInfo.name,
      meetingRoom: meetingRoomDomain,
    );
  }
}

extension AppointmentDtoX on AppointmentDto {
  List<Appointment> toDomain() => data.rows.map((e) => e.toDomain()).toList();
}
