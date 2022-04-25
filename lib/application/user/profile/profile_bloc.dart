import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/authentication/interfaces/i_authentication_service.dart';
import '../../../domain/common/failures/failure.dart';
import '../../../domain/common/models/country.dart';
import '../../../domain/user/constants/levels.dart';
import '../../../domain/user/interfaces/i_user_repository.dart';
import '../../../domain/user/models/speciality.dart';
import '../../../domain/user/models/user.dart';
import '../../../domain/user/value_objects/birthday.dart';
import '../../../domain/user/value_objects/name.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AuthenticationService _authenticationService;
  final UserRepository _repository;

  ProfileBloc(this._authenticationService, this._repository)
      : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(
        initialize: () => _onInitialize(emit),
        nameChanged: (value) => _onNameChanged(value, emit),
        birthDayChanged: (value) => _onBirthDayChanged(value, emit),
        countryChanged: (value) => _onCountryChanged(value, emit),
        levelChanged: (value) => _onLevelChanged(value, emit),
        learnTopicsChanged: (value) => _onLearnTopicsChanged(value, emit),
        testPreparationTopicsChanged: (value) =>
            _onTestPreparationTopicsChanged(value, emit),
        updateButtonPressed: () => _onUpdateButtonPressed(emit),
        newProfileImageSelected: (value) =>
            _onNewProfileImageSelected(value, emit),
      );
    });
  }

  Future _onInitialize(
    Emitter<ProfileState> emit, {
    bool reloadTopics = true,
  }) async {
    emit(state.copyWith(
      isInitializing: true,
      badState: false,
    ));

    // await Future.delayed(const Duration(seconds: 2));

    final user = (await _authenticationService.getSignedInUser()).fold(
      () => null,
      (a) => a,
    );

    if (user == null) {
      emit(state.copyWith(
        isInitializing: false,
        badState: true,
      ));
      return;
    }

    if (reloadTopics) {
      final learnTopics = await _repository.getLearnTopics();
      final testPreparations = await _repository.getTestPreparationTopics();

      final isValid = learnTopics.isRight() && testPreparations.isRight();
      if (!isValid) {
        emit(state.copyWith(
          isInitializing: false,
          badState: true,
          updateFailureOrSuccessOption: const None(),
        ));
        return;
      }

      emit(state.copyWith(
        allLearnTopics: learnTopics.fold((l) => [], (r) => r),
        allTestPreparations: testPreparations.fold((l) => [], (r) => r),
      ));
    }

    emit(state.copyWith(
      isInitializing: false,
      badState: false,
      user: user,
      name: user.name,
      birthDay: user.birthday,
      country: user.country,
      level: user.level,
      learnTopics: user.learningTopics,
      testPreparations: user.testPreparationTopics,
      showError: false,
      updateFailureOrSuccessOption: const None(),
    ));
  }

  Future _onNameChanged(String value, Emitter<ProfileState> emit) async {
    emit(state.copyWith(name: Name(value)));
  }

  Future _onBirthDayChanged(String value, Emitter<ProfileState> emit) async {
    emit(state.copyWith(birthDay: BirthDay.fromString(value)));
  }

  Future _onCountryChanged(Country value, Emitter<ProfileState> emit) async {
    emit(state.copyWith(country: value));
  }

  Future _onLevelChanged(Level value, Emitter<ProfileState> emit) async {
    emit(state.copyWith(level: value));
  }

  Future _onLearnTopicsChanged(
    List<Speciality> value,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(learnTopics: value));
  }

  Future _onTestPreparationTopicsChanged(
    List<Speciality> value,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(testPreparations: value));
  }

  Future _onUpdateButtonPressed(Emitter<ProfileState> emit) async {
    Either<Failure, Unit>? result;

    if (state.isFormValid) {
      emit(state.copyWith(
        isLoading: true,
        updateFailureOrSuccessOption: none(),
      ));

      result = await _repository.updateUserInfo(
        name: state.name,
        birthDay: state.birthDay!,
        phoneNumber: state.user.phoneNumber,
        country: state.country!,
        level: state.level,
        learnTopics: state.learnTopics,
        testPreparations: state.testPreparations,
      );
    }
    await _onInitialize(emit, reloadTopics: false);

    emit(state.copyWith(
      isLoading: false,
      showError: true,
      updateFailureOrSuccessOption: optionOf(result),
    ));
  }

  Future _onNewProfileImageSelected(
      File file, Emitter<ProfileState> emit) async {
    emit(state.copyWith(selectedProfileImage: file));
  }
}
