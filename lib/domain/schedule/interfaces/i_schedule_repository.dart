import 'package:dartz/dartz.dart';

import '../../../presentation/common.dart';
import '../../common/failures/failure.dart';
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

  Future<Either<Failure, List<Appointment>>> getUpcomingClasses();

  Future<Either<Failure, List<Appointment>>> getHistory();
}
