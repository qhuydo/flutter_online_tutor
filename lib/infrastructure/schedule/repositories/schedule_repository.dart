import 'dart:async';
import 'dart:developer';

import 'package:collection/collection.dart';
import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/error/error.dart';
import '../../../domain/common/failures/failure.dart';
import '../../../domain/schedule/events/schedule_repository_event.dart';
import '../../../domain/schedule/interfaces/i_schedule_repository.dart';
import '../../../domain/schedule/models/appointment.dart';
import '../../../domain/schedule/models/appointment_status.dart';
import '../../../domain/schedule/models/schedule.dart';
import '../../../presentation/common.dart';
import '../../common/dto/pagination_list_dto.dart';
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
  final _eventStreamController =
      StreamController<ScheduleRepositoryEvent>.broadcast();

  static const _keyUser = 'user';

  ScheduleRepositoryImpl(@Named('secret') this._box, this._apiClient);

  @override
  Future<Either<Failure, Unit>> bookClass({
    required String scheduleDetailsId,
    required String note,
  }) async {
    try {
      final data = {
        'scheduleDetailIds': [scheduleDetailsId],
        'note': note,
      };
      final result = await _apiClient.post(
        RequestUrl.schedule.book,
        data: data,
        onResponded: (response) => unit,
      );
      return result;
    } on FlutterError {
      return left(const Failure.internalError());
    }
  }

  @override
  Future<Either<Failure, Unit>> cancelClass({
    required String scheduleDetailsId,
  }) async {
    try {
      final data = {
        'scheduleDetailIds': [scheduleDetailsId],
      };
      final result = await _apiClient.delete(
        RequestUrl.schedule.book,
        data: data,
        onResponded: (response) => unit,
      );
      return result;
    } on FlutterError {
      return left(const Failure.internalError());
    }
  }

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
      ]..sort((a, b) => a.meetingTime.start.compareTo(b.meetingTime.start));

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
  }) async {
    try {
      final data = {
        'studentRequest': note,
      };
      final result = await _apiClient.post(
        RequestUrl.schedule.updateStudentRequest(bookedId),
        data: data,
        onResponded: (response) => unit,
      );
      return result;
    } on FlutterError {
      return left(const Failure.internalError());
    }
  }

  @override
  Future<Either<Failure, PaginationListDto<Appointment>>> getHistory({
    required int page,
    required int limit,
  }) {
    return _getClasses(limit: limit, queryParams: {
      'page': page.toString(),
      'perPage': limit.toString(),
      'dateTimeLte': DateTime.now().millisecondsSinceEpoch.toString(),
      'orderBy': 'meeting',
      'sortBy': 'desc',
    });
  }

  @override
  Future<Either<Failure, PaginationListDto<Appointment>>> getUpcomingClasses({
    required int page,
    required int limit,
  }) {
    return _getClasses(limit: limit, queryParams: {
      'page': page.toString(),
      'perPage': limit.toString(),
      'dateTimeGte': DateTime.now()
          .subtract(const Duration(minutes: 5))
          .millisecondsSinceEpoch
          .toString(),
      'orderBy': 'meeting',
      'sortBy': 'asc',
    });
  }

  @override
  Future<Either<Failure, Appointment?>> getNextClass() async {
    try {
      log(RequestUrl.schedule.next);
      final res = _apiClient.get<Appointment?>(
        RequestUrl.schedule.next,
        onResponded: (response) {
          final data = response.data['data'] as List;
          final list = data
              .map(
                (e) => AppointmentRowDto.fromJson(e).toDomain(),
              )
              .sortedBy((element) => element.meetingTime.start);

          for (final item in list) {
            log('${item.meetingTime.start} - ${item.status}');
            if (item.status == AppointmentStatus.ended) {
              continue;
            }
            return item;
          }
          return null;
        },
      );

      return res;
    } on FlutterError {
      return left(const Failure.notFound());
    }
  }

  Future<Either<Failure, PaginationListDto<Appointment>>> _getClasses({
    required int limit,
    required Map<String, dynamic> queryParams,
    String? requestUrl,
  }) async {
    try {
      final res = _apiClient.get(
        requestUrl ?? RequestUrl.schedule.list,
        queryParams: queryParams,
        onResponded: (response) {
          final data = response.data as Map<String, dynamic>;
          final totalItems = data['data']['count'] as int;
          final dto = AppointmentDto.fromJson(data).toDomain();
          return PaginationListDto<Appointment>(
            list: dto,
            totalItems: totalItems,
            limit: limit,
          );
        },
      );

      return res;
    } on FlutterError {
      return left(const Failure.notFound());
    }
  }

  @override
  Future<Either<Failure, Duration>> getTotalLearningTime() async {
    try {
      final res = await _apiClient.get(
        RequestUrl.schedule.total,
        onResponded: (response) {
          final data = response.data as Map<String, dynamic>;
          final totalMinutes = data['total'] as int;
          return Duration(minutes: totalMinutes);
        },
      );

      log('${res.fold((l) => l, (r) => r)}');

      return res;
    } on FlutterError {
      return left(const Failure.notFound());
    }
  }

  @override
  @disposeMethod
  Future dispose() {
    return _eventStreamController.close();
  }

  @override
  Stream<ScheduleRepositoryEvent> subscribe() {
    return _eventStreamController.stream;
  }

  @override
  void notifyChanged() {
    _eventStreamController.add(const ScheduleRepositoryEvent.dataChanged());
  }
}
