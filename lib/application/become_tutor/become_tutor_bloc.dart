import 'package:bloc/bloc.dart';
import 'package:cross_file/cross_file.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/common/failures/failure.dart';
import '../../domain/common/models/country.dart';
import '../../domain/common/value_objects/non_empty_value.dart';
import '../../domain/tutor/interfaces/i_tutor_repository.dart';
import '../../domain/tutor/models/language.dart';
import '../../domain/user/constants/target_student.dart';
import '../../domain/user/interfaces/i_user_repository.dart';
import '../../domain/user/models/speciality.dart';
import '../../domain/user/value_objects/birthday.dart';
import '../../domain/user/value_objects/name.dart';

part 'become_tutor_bloc.freezed.dart';

part 'become_tutor_event.dart';

part 'become_tutor_state.dart';

@injectable
class BecomeTutorBloc extends Bloc<BecomeTutorEvent, BecomeTutorState> {
  final UserRepository _repository;
  final TutorRepository _tutorRepository;

  BecomeTutorBloc(
    this._repository,
    this._tutorRepository,
  ) : super(BecomeTutorState.initial()) {
    on<BecomeTutorEvent>((event, emit) async {
      await event.when(
        initialise: () => _initialise(emit),
        nameChanged: (value) => _nameChanged(value, emit),
        countryChanged: (value) => _countryChanged(value, emit),
        birthDayChanged: (value) => _birthDayChanged(value, emit),
        interestsChanged: (value) => _interestsChanged(value, emit),
        educationChanged: (value) => _educationChanged(value, emit),
        experienceChanged: (value) => _experienceChanged(value, emit),
        professionChanged: (value) => _professionChanged(value, emit),
        languagesChanged: (value) => _languagesChanged(value, emit),
        bioChanged: (value) => _bioChanged(value, emit),
        targetStudentChanged: (value) => _targetStudentChanged(value, emit),
        specialitiesChanged: (value) => _specialitiesChanged(value, emit),
        avatarChanged: (value) => _avatarChanged(value, emit),
        videoChanged: (value) => _videoChanged(value, emit),
        priceChanged: (value) => _priceChanged(value, emit),
        previousStepButtonPressed: () => _previousStepButtonPressed(emit),
        nextStepButtonPressed: () => _nextStepButtonPressed(emit),
      );
    });
  }

  Future _initialise(Emitter<BecomeTutorState> emit) async {
    emit(state.copyWith(isInitialising: true));

    final user = (await _repository.fetchUserInfo()).fold(
      (l) => null,
      (r) => r,
    );
    final specialities = await _tutorRepository.getSpecialities();

    emit(state.copyWith(
      isInitialising: false,
      name: user?.name ?? Name(''),
      birthDay: user?.birthday,
      country: user?.country,
      allSpecialities: specialities,
    ));

    if (user?.tutorFormCompleted == true) {
      emit(state.copyWith(
        currentStepIndex: BecomeTutorState.totalSteps - 1,
        completedSteps: {
          for (int i = 0; i < BecomeTutorState.totalSteps; i++) i
        },
      ));
    }
  }

  Future _nameChanged(String value, Emitter<BecomeTutorState> emit) async {
    emit(state.copyWith(name: Name(value)));
  }

  Future _countryChanged(
    Country value,
    Emitter<BecomeTutorState> emit,
  ) async {
    emit(state.copyWith(country: value));
  }

  Future _birthDayChanged(
    String value,
    Emitter<BecomeTutorState> emit,
  ) async {
    emit(state.copyWith(birthDay: BirthDay.fromString(value)));
  }

  Future _interestsChanged(
    String value,
    Emitter<BecomeTutorState> emit,
  ) async {
    emit(state.copyWith(interests: NonEmptyValue(value)));
  }

  Future _educationChanged(
    String value,
    Emitter<BecomeTutorState> emit,
  ) async {
    emit(state.copyWith(education: NonEmptyValue(value)));
  }

  Future _experienceChanged(
    String value,
    Emitter<BecomeTutorState> emit,
  ) async {
    emit(state.copyWith(experience: NonEmptyValue(value)));
  }

  Future _professionChanged(
    String value,
    Emitter<BecomeTutorState> emit,
  ) async {
    emit(state.copyWith(profession: NonEmptyValue(value)));
  }

  Future _languagesChanged(
    List<Language> value,
    Emitter<BecomeTutorState> emit,
  ) async {
    emit(state.copyWith(languages: value));
  }

  Future _bioChanged(String value, Emitter<BecomeTutorState> emit) async {
    emit(state.copyWith(bio: NonEmptyValue(value)));
  }

  Future _targetStudentChanged(
    TargetStudent value,
    Emitter<BecomeTutorState> emit,
  ) async {
    emit(state.copyWith(targetStudent: value));
  }

  Future _specialitiesChanged(
    List<Speciality> value,
    Emitter<BecomeTutorState> emit,
  ) async {
    emit(state.copyWith(specialities: value));
  }

  void _getFile(FilePickerResult? result, void Function(XFile) callback) {
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
      callback.call(file);
    }
  }

  Future _avatarChanged(
    FilePickerResult? result,
    Emitter<BecomeTutorState> emit,
  ) async {
    _getFile(result, (file) {
      emit(state.copyWith(avatar: file));
    });
  }

  Future _videoChanged(
    FilePickerResult? result,
    Emitter<BecomeTutorState> emit,
  ) async {
    _getFile(result, (file) {
      emit(state.copyWith(video: file));
    });
  }

  Future _priceChanged(String value, Emitter<BecomeTutorState> emit) async {
    // emit(state.copyWith(price: value));
  }

  Future _previousStepButtonPressed(Emitter<BecomeTutorState> emit) async {
    if (state.currentStepIndex > 0) {
      emit(state.copyWith(
        currentStepIndex: state.currentStepIndex - 1,
        completedSteps: state.completedSteps.toSet()
          ..remove(state.currentStepIndex),
      ));
    }
  }

  Future _nextStepButtonPressed(Emitter<BecomeTutorState> emit) async {
    final index = state.currentStepIndex;
    if (index == 0) {
      emit(state.copyWith(showErrorAtStep1: true));
      if (!state.isStep1FormValid) {
        return;
      }
    } else if (index == 1) {
      emit(state.copyWith(showErrorAtStep2: true));
      if (!state.isStep2FormValid) {
        return;
      }

      emit(state.copyWith(isLoading: true, registerSucceedOrFailed: null));

      try {
        final result = await _repository.registerAsTeacher(
          name: state.name,
          country: state.country!,
          birthDay: state.birthDay!,
          interest: state.interests,
          education: state.education,
          experience: state.experience,
          profession: state.profession,
          languages: state.languages,
          bio: state.bio,
          targetStudent: state.targetStudent,
          specialities: state.specialities,
          avatar: state.avatar!,
          video: state.video!,
        );

        emit(state.copyWith(registerSucceedOrFailed: result));
      } on NullThrownError {
        emit(
          state.copyWith(
            registerSucceedOrFailed: left(const Failure.internalError()),
          ),
        );
      } finally {
        emit(state.copyWith(isLoading: false));
      }

      if (state.registerSucceedOrFailed == null ||
          state.registerSucceedOrFailed?.isLeft() == true) {
        return;
      }
    }

    if (index >= 0 && index < BecomeTutorState.totalSteps - 1) {
      emit(state.copyWith(
        currentStepIndex: state.currentStepIndex + 1,
        completedSteps: state.completedSteps.toSet()
          ..add(state.currentStepIndex + 1),
      ));
    }
  }
}
