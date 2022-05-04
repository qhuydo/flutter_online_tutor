part of 'become_tutor_bloc.dart';

@freezed
class BecomeTutorEvent with _$BecomeTutorEvent {
  const factory BecomeTutorEvent.initialise() = _Initialise;

  const factory BecomeTutorEvent.nameChanged(String name) = _NameChanged;

  const factory BecomeTutorEvent.countryChanged(Country country) =
      _CountryChanged;

  const factory BecomeTutorEvent.birthDayChanged(String birthDay) =
      _BirthDayChanged;

  const factory BecomeTutorEvent.interestsChanged(String value) =
      _InterestsChanged;

  const factory BecomeTutorEvent.educationChanged(String value) =
      _EducationChanged;

  const factory BecomeTutorEvent.experienceChanged(String value) =
      _ExperienceChanged;

  const factory BecomeTutorEvent.professionChanged(String value) =
      _ProfessionChanged;

  const factory BecomeTutorEvent.languagesChanged(List<Language> languages) =
      _LanguagesChanged;

  const factory BecomeTutorEvent.bioChanged(String bio) = _BioChanged;

  const factory BecomeTutorEvent.targetStudentChanged(
    TargetStudent targetStudent,
  ) = _TargetStudentChanged;

  const factory BecomeTutorEvent.specialitiesChanged(
    List<Speciality> speciality,
  ) = _SpecialitiesChanged;

  const factory BecomeTutorEvent.avatarChanged(FilePickerResult? result) =
      _AvatarChanged;

  const factory BecomeTutorEvent.videoChanged(FilePickerResult? result) =
      _VideoChanged;

  const factory BecomeTutorEvent.priceChanged(String price) = _PriceChanged;

  const factory BecomeTutorEvent.nextStepButtonPressed() =
      _NextStepButtonPressed;

  const factory BecomeTutorEvent.previousStepButtonPressed() =
      _PreviousStepButtonPressed;
}
