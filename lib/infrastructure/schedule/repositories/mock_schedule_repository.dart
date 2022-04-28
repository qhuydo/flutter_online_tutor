import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/failures/failure.dart';
import '../../../domain/schedule/interfaces/i_schedule_repository.dart';
import '../../../domain/schedule/models/appointment.dart';
import '../../../domain/schedule/models/schedule.dart';
import '../../../presentation/common.dart';
import '../../common/db/fixture_loader.dart';
import '../../common/dto/pagination_list_dto.dart';
import '../dto/appointment/appointment_dto.dart';
import '../dto/tutor_schedule/tutor_schedule_dto.dart';

@LazySingleton(as: ScheduleRepository, env: ['mock'])
class MockScheduleRepository extends ScheduleRepository {
  final Box<String> _box;

  static const _keyUser = 'user';

  MockScheduleRepository(@Named('mockSecret') this._box);

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

      final res = await FixtureLoader.tutorSchedule(tutorId);
      final tutorScheduleDto = (res['scheduleOfTutor'] as List)
          .map((e) => TutorScheduleDto.fromJson(e));

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

  @override
  Future<Either<Failure, PaginationListDto<Appointment>>> getHistory({
    required int page,
    required int limit,
  }) async {
    try {
      final userId = _box.get(_keyUser);
      if (userId == null) {
        return left(const Failure.wtf(
          'Local storage does not contains user id',
        ));
      }

      final res = AppointmentDto.fromJson(await FixtureLoader.classHistory);
      final history = res.toDomain();

      final result = PaginationListDto(
        list: history,
        totalItems: history.length,
        limit: limit,
      );

      return right(result);
    } on FlutterError {
      return left(const Failure.notFound());
    }
  }

  @override
  Future<Either<Failure, PaginationListDto<Appointment>>> getUpcomingClasses({
    required int page,
    required int limit,
  }) async {
    try {
      final userId = _box.get(_keyUser);
      if (userId == null) {
        return left(const Failure.wtf(
          'Local storage does not contains user id',
        ));
      }

      final res = AppointmentDto.fromJson(await FixtureLoader.upcomingClasses);
      final upcomingClasses = res.toDomain();
      final result = PaginationListDto(
        list: upcomingClasses,
        totalItems: upcomingClasses.length,
        limit: limit,
      );

      return right(result);
    } on FlutterError {
      return left(const Failure.notFound());
    }
  }

  @override
  Future<Either<Failure, Appointment?>> getNextClass() async {
    final upcomingClasses = await getUpcomingClasses(page: 1, limit: 1);
    return upcomingClasses.map((r) => r.list.firstOrNull);
  }

  @override
  Future<Either<Failure, Duration>> getTotalLearningTime() async {
    return right(const Duration(minutes: 6969));
  }
}
