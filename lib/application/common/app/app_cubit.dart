import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/app/i_app_repository.dart';
import '../../../domain/common/app/language.dart';

part 'app_cubit.freezed.dart';

part 'app_state.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  final AppRepository _appRepository;

  AppCubit({required AppRepository appRepository})
      : _appRepository = appRepository,
        super(AppState.initial());

  Future<void> changeAppLanguage(Language language) async {
    final result = await _appRepository.setLanguage(language);
    if (result) {
      emit(state.copyWith(
        language: language,
      ));
    }
  }

  Future<void> initialize() async {
    final language = await _appRepository.getLanguage();
    emit(state.copyWith(
      language: language,
    ));
  }
}
