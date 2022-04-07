import 'dart:ui';

import 'package:injectable/injectable.dart';

import '../../../common.dart';
import '../../../domain/common/app/colour_scheme.dart';
import '../../../domain/common/app/i_app_repository.dart';
import '../../../domain/common/app/language.dart';
import '../../../domain/common/app/theme_mode.dart';
import '../db/shared_preference_storage.dart';
import 'language.dart';

@LazySingleton(as: AppRepository)
class AppRepositoryImpl extends AppRepository {
  static const String keyLanguage = 'keyLanguage';
  static const String keyColourScheme = 'keyColourScheme';
  static const String keyAppThemeMode = 'keyAppThemeMode';

  final storage = getIt<SharedPreferenceStorage>();

  @override
  Future<Language> getLanguage() async => getLanguageFromString(storage.get(
        keyLanguage,
        defaultValue: Language.followSystem.toString(),
      ) as String?);

  Future<Locale?> getLocale() async => (await getLanguage()).toLocale();

  @override
  Future<bool> setLanguage(Language language) => storage.set(
        keyLanguage,
        language.toString(),
      );

  @override
  Future<ColourScheme> getColourScheme() async => ((storage.get(
        keyColourScheme,
        defaultValue: ColourScheme.bahamaBlue.toString(),
      ) as String?))
          .toColourScheme();

  @override
  Future<bool> setColourScheme(ColourScheme colourScheme) => storage.set(
        keyColourScheme,
        colourScheme.toString(),
      );

  @override
  Future<AppThemeMode> getAppThemeMode() async => ((storage.get(
        keyAppThemeMode,
        defaultValue: AppThemeMode.followSystem.toString(),
      ) as String?))
          .toAppThemeMode();

  @override
  Future<bool> setAppThemeMode(AppThemeMode appThemeMode) => storage.set(
        keyAppThemeMode,
        appThemeMode.toString(),
      );
}
