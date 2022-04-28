part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const HistoryState._();

  const factory HistoryState({
    @Default(false) isLoading,
    @Default(1) int currentPage,
    @Default(20) int limit,
    @Default(Right(PaginationListDto(list: [], totalItems: 0, limit: 20)))
        Either<Failure, PaginationListDto<Appointment>> classOrFailure,
  }) = _HistoryState;

  List<Appointment>? get history =>
      classOrFailure.fold((l) => null, (r) => r.list);

  int get totalResults => classOrFailure.fold((l) => 0, (r) => r.totalItems);

  int get totalPages => classOrFailure.fold((l) => 0, (r) => r.totalPages);
}
