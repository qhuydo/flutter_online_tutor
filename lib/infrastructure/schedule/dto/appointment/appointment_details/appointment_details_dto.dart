import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../domain/schedule/models/appointment.dart';
import '../schedule_info/schedule_info_dto.dart';

part 'appointment_details_dto.freezed.dart';

part 'appointment_details_dto.g.dart';

@freezed
class AppointmentDetailsDto with _$AppointmentDetailsDto {
  const factory AppointmentDetailsDto({
    required int startPeriodTimestamp,
    required int endPeriodTimestamp,
    required String id,
    required String scheduleId,
    required String startPeriod,
    required String endPeriod,
    required DateTime createdAt,
    required DateTime updatedAt,
    required ScheduleInfoDto scheduleInfo,
  }) = _AppointmentDetailsDto;

  factory AppointmentDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDetailsDtoFromJson(json);
}
