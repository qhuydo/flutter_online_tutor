import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_info_dto.freezed.dart';

part 'booking_info_dto.g.dart';

@freezed
class BookingInfoDto with _$BookingInfoDto {
  const factory BookingInfoDto({
    required int createdAtTimeStamp,
    required int updatedAtTimeStamp,
    required String id,
    required String userId,
    required String scheduleDetailId,
    required String tutorMeetingLink,
    required String studentMeetingLink,
    required String studentRequest,
    required String? tutorReview,
    // dynamic scoreByTutor,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String? recordUrl,
    required bool isDeleted,
  }) = _BookingInfoDto;

  factory BookingInfoDto.fromJson(Map<String, dynamic> json) =>
      _$BookingInfoDtoFromJson(json);
}
