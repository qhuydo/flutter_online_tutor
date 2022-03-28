part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  factory ProfileState({
    required User user,
    required Name name,
    BirthDay? birthDay,
    // PhoneNumber? phoneNumber,
    Country? country,
    @Default(Level.none) Level level,
    @Default([]) List<LearnTopic> learnTopics,
    @Default([]) List<TestPreparation> testPreparations,
    @Default(true) bool isInitializing,
    @Default(false) bool isLoading,
    @Default(false) bool badState,
    @Default(false) bool showError,
    @Default(None()) Option<Either<Failure, Unit>> updateFailureOrSuccessOption,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        user: User.initial(),
        name: Name(''),
      );

  bool get isFormValid =>
      name.isValid() && birthDay?.isValid() == true && country?.isValid == true;
}
