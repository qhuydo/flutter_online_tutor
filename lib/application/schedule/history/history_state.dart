part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {

  const HistoryState._();

  const factory HistoryState({
    @Default(false) isLoading,
    @Default(Right([])) Either<Failure, List<Appointment>> classOrFailure,
  }) = _HistoryState;

  List<Appointment>? get history => classOrFailure.fold((l) => null, (r) => r);
}

