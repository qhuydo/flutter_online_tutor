import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/error/error.dart';
import '../../../domain/common/failures/failure.dart';
import '../../../domain/schedule/interfaces/i_schedule_repository.dart';
import '../../../domain/schedule/models/appointment.dart';
import '../../../domain/schedule/models/schedule.dart';
import '../../../presentation/common.dart';
import '../../common/network/api_client.dart';
import '../../common/network/request_url.dart';
import '../dto/appointment/appointment_dto.dart';
import '../dto/tutor_schedule/tutor_schedule_dto.dart';

@LazySingleton(
  as: ScheduleRepository,
  env: [Environment.dev, Environment.prod, Environment.test],
)
class ScheduleRepositoryImpl extends ScheduleRepository {
  late final Box<String> _box;
  final ApiClient _apiClient;

  static const _keyUser = 'user';

  ScheduleRepositoryImpl(@Named('secret') this._box, this._apiClient);

  @override
  Future<Either<Failure, Unit>> bookClass({
    required String scheduleDetailsId,
    required String note,
  }) async =>
      right(unit);

  @override
  Future<Either<Failure, Unit>> cancelClass({
    required String scheduleDetailsId,
  }) async =>
      right(unit);

  @override
  Future<Either<Failure, EventMap>> getScheduleEvents({
    required String tutorId,
    required DateTimeRange range,
  }) async {
    try {
      final userId = _box.get(_keyUser);
      if (userId == null) {
        return left(const Failure.wtf(
          'Local storage does not contains user id',
        ));
      }

      final res = await _apiClient.get(
        RequestUrl.schedule.scheduleById,
        queryParams: {
          'startTimestamp': range.start.millisecondsSinceEpoch,
          'endTimestamp': range.end.millisecondsSinceEpoch,
          'tutorId': tutorId,
        },
        onResponded: (response) {
          final data = response.data as Map<String, dynamic>;

          return (data['scheduleOfTutor'] as List)
              .map((e) => TutorScheduleDto.fromJson(e));
        },
      );
      if (res.isLeft()) {
        return res.fold(
          (l) => left(l),
          (r) => left(const Failure.internalError()),
        );
      }
      final tutorScheduleDto = res.getOrElse(() => throw NoValueError(res));

      final schedule = [
        for (final dto in tutorScheduleDto)
          for (final details in dto.scheduleDetails)
            Schedule(
              scheduleId: details.id,
              tutorId: tutorId,
              meetingTime: DateTimeRange(
                start: DateTime.fromMillisecondsSinceEpoch(
                  details.startPeriodTimestamp,
                ),
                end: DateTime.fromMillisecondsSinceEpoch(
                  details.endPeriodTimestamp,
                ),
              ),
              isBooked: details.isBooked,
              isReserved: details.isBooked &&
                  details.bookingInfo.any(
                    (element) => element.userId == userId,
                  ),
            ),
      ];

      final eventMap = schedule.groupListsBy((element) => DateTime(
            element.meetingTime.start.year,
            element.meetingTime.start.month,
            element.meetingTime.start.day,
          ));

      return right(eventMap);
    } on FlutterError {
      return left(const Failure.notFound());
    }
  }

  @override
  Future<Either<Failure, Unit>> updateRequest({
    required String bookedId,
    required String note,
  }) async =>
      right(unit);

  // TODO add pagination
  @override
  Future<Either<Failure, List<Appointment>>> getHistory() async {
    try {
      final userId = _box.get(_keyUser);
      if (userId == null) {
        return left(const Failure.wtf(
          'Local storage does not contains user id',
        ));
      }

      final res = _apiClient.get(
        RequestUrl.schedule.bookedClasses(
          page: 1,
          perPage: 20,
          dateTimeLte: DateTime.now()
              .subtract(const Duration(minutes: 35))
              .millisecondsSinceEpoch,
          orderedBy: 'meeting',
          sortedBy: 'desc',
        ),
        onResponded: (response) {
          final data = response.data as Map<String, dynamic>;

          return AppointmentDto.fromJson(data).toDomain();
        },
      );

      return res;
    } on FlutterError {
      return left(const Failure.notFound());
    }
  }

  @override
  Future<Either<Failure, List<Appointment>>> getUpcomingClasses() async {
    try {
      final userId = _box.get(_keyUser);
      if (userId == null) {
        return left(const Failure.wtf(
          'Local storage does not contains user id',
        ));
      }

      final res = _apiClient.get(
        RequestUrl.schedule.upComingClasses(
          page: 1,
          perPage: 20,
          dateTimeGte: DateTime.now()
              .subtract(const Duration(minutes: 5))
              .millisecondsSinceEpoch,
          orderedBy: 'meeting',
          sortedBy: 'desc',
        ),
        onResponded: (response) {
          final data = response.data as Map<String, dynamic>;

          return AppointmentDto.fromJson(data).toDomain();
        },
      );

      return res;
    } on FlutterError {
      return left(const Failure.notFound());
    }
  }
}