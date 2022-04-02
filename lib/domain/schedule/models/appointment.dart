import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/common.dart';
import '../../common/models/country.dart';

part 'appointment.freezed.dart';

@freezed
class Appointment with _$Appointment {
  const factory Appointment({
    required String scheduleId,
    required String bookId,
    required String tutorId,
    required DateTimeRange meetingTime,
    required String studentRequest,
    required String tutorName,
    String? tutorAvatar,
    Country? tutorCountry,
  }) = _Appointment;
}
