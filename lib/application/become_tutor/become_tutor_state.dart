part of 'become_tutor_bloc.dart';

@freezed
class BecomeTutorState with _$BecomeTutorState {
  const BecomeTutorState._();
  static const totalSteps = 3;

  const factory BecomeTutorState({
    required Name name,
    Country? country,
    BirthDay? birthDay,
    required NonEmptyValue interests,
    required NonEmptyValue education,
    required NonEmptyValue experience,
    required NonEmptyValue profession,
    @Default([]) List<Language> languages,
    required NonEmptyValue bio,
    @Default(TargetStudent.beginner) TargetStudent targetStudent,
    @Default([]) List<Speciality> specialities,
    XFile? avatar,
    XFile? video,
    @Default(false) bool isInitialising,
    @Default(false) bool isLoading,
    @Default(false) bool showError,
    @Default(false) bool showErrorAtStep1,
    @Default(false) bool showErrorAtStep2,
    Either<Failure, Unit>? registerSucceedOrFailed,
    @Default([]) List<Speciality> allSpecialities,
    @Default(0) int currentStepIndex,
    @Default({}) Set<int> completedSteps,
  }) = _BecomeTutorState;

  factory BecomeTutorState.initial() =>
      BecomeTutorState(
        name: Name(''),
        interests: NonEmptyValue(),
        education: NonEmptyValue(),
        experience: NonEmptyValue(),
        profession: NonEmptyValue(),
        bio: NonEmptyValue(),
      );
}
