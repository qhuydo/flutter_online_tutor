part of 'upcoming_class_bloc.dart';

@freezed
class UpcomingClassEvent with _$UpcomingClassEvent {

  const factory UpcomingClassEvent.initialise() = _Initialise;

  const factory UpcomingClassEvent.pageChanged(int page) = _PageChanged;

  const factory UpcomingClassEvent.pageLimitChanged(int pageLimit) =
  _PageLimitChanged;

}
