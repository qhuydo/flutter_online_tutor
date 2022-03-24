import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/common/app/language.dart';
import '../../../infrastructure/common/app/app_repository.dart';

part 'app_cubit.freezed.dart';

part 'app_state.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  final AppRepository _appRepository;

  AppCubit({required AppRepository appRepository})
      : _appRepository = appRepository,
        super(AppState.initial());

  Future<void> changeAppLanguage(Language language) async {
    await _appRepository.setLanguage(language);
    emit(state.copyWith(
      language: language,
    ));
  }
}
