part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.initialise() = _Initialise;

  const factory ProfileEvent.nameChanged(String name) = _NameChanged;

  const factory ProfileEvent.birthDayChanged(String birthDay) =
      _BirthDayChanged;

  const factory ProfileEvent.countryChanged(Country country) = _CountryChanged;

  const factory ProfileEvent.levelChanged(Level level) = _LevelChanged;

  const factory ProfileEvent.learnTopicsChanged(List<Speciality> learnTopics) =
      _LearnTopicsChanged;

  const factory ProfileEvent.testPreparationTopicsChanged(
    List<Speciality> testPreparationTopics,
  ) = _TestPreparationTopicsChanged;

  const factory ProfileEvent.updateButtonPressed() = _UpdateButtonPressed;

  const factory ProfileEvent.newProfileImageSelected(
    FilePickerResult? pickerResult,
  ) = _NewProfileImageSelected;
}
