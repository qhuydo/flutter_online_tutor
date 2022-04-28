part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {

  const factory HistoryEvent.initialise() = _Initialise;

  const factory HistoryEvent.pageChanged(int page) = _PageChanged;

  const factory HistoryEvent.pageLimitChanged(int pageLimit) =
  _PageLimitChanged;

}
