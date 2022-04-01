import 'package:freezed_annotation/freezed_annotation.dart';

import '../booking_info/booking_info_dto.dart';

part 'schedule_details_dto.freezed.dart';

part 'schedule_details_dto.g.dart';

@freezed
class ScheduleDetailDto with _$ScheduleDetailDto {
  const factory ScheduleDetailDto({
    required int startPeriodTimestamp,
    required int endPeriodTimestamp,
    required String id,
    required String scheduleId,
    required String startPeriod,
    required String endPeriod,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<BookingInfoDto> bookingInfo,
    required bool isBooked,
  }) = _ScheduleDetailDto;

  factory ScheduleDetailDto.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDetailDtoFromJson(json);
}
