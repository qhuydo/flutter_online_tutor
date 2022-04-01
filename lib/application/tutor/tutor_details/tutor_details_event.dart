part of 'tutor_details_bloc.dart';

@freezed
class TutorDetailsEvent with _$TutorDetailsEvent {

  const factory TutorDetailsEvent.initialise(String tutorId) = _Initialise;

  const factory TutorDetailsEvent.toggleFavourite() = _ToggleFavourite;
}
