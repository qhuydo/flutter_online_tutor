part of 'upcoming_class_bloc.dart';

@freezed
class UpcomingClassState with _$UpcomingClassState {
  const UpcomingClassState._();

  const factory UpcomingClassState({
    @Default(false) isLoading,
    @Default(1) int currentPage,
    @Default(20) int limit,
    @Default(Right([]))
        Either<Failure, PaginationListDto<Appointment>> classOrFailure,
  }) = _UpcomingClassState;

  List<Appointment>? get upcomingClasses => classOrFailure.fold(
        (l) => null,
        (r) => r.list
      );

  int get totalResults => classOrFailure.fold((l) => 0, (r) => r.totalItems);

  int get totalPages => classOrFailure.fold((l) => 0, (r) => r.totalPages);
}
