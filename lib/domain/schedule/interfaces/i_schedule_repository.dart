import 'package:dartz/dartz.dart';

import '../../../infrastructure/common/dto/pagination_list_dto.dart';
import '../../../presentation/common.dart';
import '../../common/failures/failure.dart';
import '../events/schedule_repository_event.dart';
import '../models/appointment.dart';
import '../models/schedule.dart';

abstract class ScheduleRepository {
  Future<Either<Failure, EventMap>> getScheduleEvents({
    required String tutorId,
    required DateTimeRange range,
  });

  Future<Either<Failure, Unit>> bookClass({
    required String scheduleDetailsId,
    required String note,
  });

  Future<Either<Failure, Unit>> cancelClass({
    required String scheduleDetailsId,
  });

  Future<Either<Failure, Unit>> updateRequest({
    required String bookedId,
    required String note,
  });

  Future<Either<Failure, PaginationListDto<Appointment>>> getUpcomingClasses({
    required int page,
    required int limit,
  });

  Future<Either<Failure, PaginationListDto<Appointment>>> getHistory({
    required int page,
    required int limit,
  });

  Future<Either<Failure, Appointment?>> getNextClass();

  Future<Either<Failure, Duration>> getTotalLearningTime();

  Stream<ScheduleRepositoryEvent> subscribe();

  Future dispose();

  void notifyChanged();
}
