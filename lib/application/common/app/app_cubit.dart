import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/app/colour_scheme.dart';
import '../../../domain/common/app/i_app_repository.dart';
import '../../../domain/common/app/language.dart';
import '../../../domain/common/app/theme_mode.dart';

part 'app_cubit.freezed.dart';

part 'app_state.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  final AppRepository _appRepository;

  AppCubit({required AppRepository appRepository})
      : _appRepository = appRepository,
        super(AppState.initial());

  Future<void> initialize() async {
    emit(state.copyWith(
      language: await _appRepository.getLanguage(),
      colourScheme: await _appRepository.getColourScheme(),
      themeMode: await _appRepository.getAppThemeMode(),
    ));
  }

  Future<void> changeAppLanguage(Language language) async {
    final result = await _appRepository.setLanguage(language);
    if (result) {
      emit(state.copyWith(
        language: language,
      ));
    }
  }

  Future<void> changeColourScheme(ColourScheme colourScheme) async {
    final result = await _appRepository.setColourScheme(colourScheme);

    if (result) {
      emit(state.copyWith(
        colourScheme: colourScheme,
      ));
    }
  }

  Future<void> changeThemeMode(AppThemeMode themeMode) async {
    final result = await _appRepository.setAppThemeMode(themeMode);

    if (result) {
      emit(state.copyWith(
        themeMode: themeMode,
      ));
    }
  }
}
