part of 'recommended_tutors_bloc.dart';

@freezed
class RecommendedTutorsEvent with _$RecommendedTutorsEvent {
  const factory RecommendedTutorsEvent.initialise() = _Initialise;

  const factory RecommendedTutorsEvent.toggleFavourite(
    String tutorId,
  ) = _ToggleFavourite;

}
