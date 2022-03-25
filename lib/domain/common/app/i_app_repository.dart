import 'colour_scheme.dart';
import 'language.dart';
import 'theme_mode.dart';

abstract class AppRepository {
  Future<Language> getLanguage();

  Future<bool> setLanguage(Language language);

  Future<ColourScheme> getColourScheme();

  Future<bool> setColourScheme(ColourScheme colourScheme);

  Future<AppThemeMode> getAppThemeMode();

  Future<bool> setAppThemeMode(AppThemeMode appThemeMode);

}
