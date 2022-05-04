import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cross_file/cross_file.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/authentication/events/authentication_service_event.dart';
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
  final UserRepository _repository;
  final AuthenticationService _authenticationService;

  ProfileBloc(
    this._repository,
    this._authenticationService,
  ) : super(ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(
        initialise: () => _onInitialise(emit),
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

  Future _onInitialise(
    Emitter<ProfileState> emit, {
    bool fetchUserInfoFromServer = true,
    bool reloadTopics = true,
  }) async {
    emit(state.copyWith(
      isInitialising: true,
      badState: false,
    ));

    final User? user;
    if (fetchUserInfoFromServer) {
      user = (await _repository.fetchUserInfo()).fold((l) => null, (r) => r);
    } else {
      user = (await _repository.getSignedInUser()).fold(
        () => null,
        (a) => a,
      );
    }

    if (user == null) {
      emit(state.copyWith(
        isInitialising: false,
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
          isInitialising: false,
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
      isInitialising: false,
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
        profileImage: state.selectedProfileImage,
      );

      if (result.isRight()) {
        _authenticationService.addEvent(
          const AuthenticationServiceEvent.profileUpdated(),
        );
      }
    }
    await _onInitialise(
      emit,
      reloadTopics: false,
      fetchUserInfoFromServer: false,
    );

    emit(state.copyWith(
      isLoading: false,
      showError: true,
      updateFailureOrSuccessOption: optionOf(result),
    ));
  }

  Future _onNewProfileImageSelected(
    FilePickerResult? result,
    Emitter<ProfileState> emit,
  ) async {
    if (result != null) {
      final XFile file;
      if (result.files.single.bytes != null) {
        file = XFile.fromData(
          result.files.single.bytes!,
          name: result.files.single.name,
        );
      } else {
        file = XFile(
          result.files.single.path!,
          name: result.files.single.name,
        );
      }

      emit(state.copyWith(selectedProfileImage: file));
    }
  }
}
