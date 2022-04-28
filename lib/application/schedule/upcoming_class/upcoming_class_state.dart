part of 'upcoming_class_bloc.dart';

@freezed
class ClassCancellationStatus with _$ClassCancellationStatus {
  const factory ClassCancellationStatus.initial() = _Initial;

  const factory ClassCancellationStatus.loading() = _Loading;

  const factory ClassCancellationStatus.succeed() = _Succeed;

  const factory ClassCancellationStatus.failed(Failure failure) = _Failed;
}

@freezed
class UpcomingClassState with _$UpcomingClassState {
  const UpcomingClassState._();

  const factory UpcomingClassState({
    @Default(false) isLoading,
    @Default(1) int currentPage,
    @Default(20) int limit,
    @Default(Right(PaginationListDto(list: [], totalItems: 0, limit: 20)))
        Either<Failure, PaginationListDto<Appointment>> classOrFailure,
    @Default(ClassCancellationStatus.initial())
        ClassCancellationStatus classCancellationStatus,
    @Default(Duration()) Duration totalLearningTime,
    Appointment? nextClass,
    Appointment? selectedAppointment,
  }) = _UpcomingClassState;

  List<Appointment>? get upcomingClasses => classOrFailure.fold(
        (l) => null,
        (r) => r.list,
      );

  int get totalResults => classOrFailure.fold((l) => 0, (r) => r.totalItems);

  int get totalPages => classOrFailure.fold((l) => 0, (r) => r.totalPages);
}
