import 'colour_scheme.dart';
import 'language.dart';

abstract class AppRepository {
  Future<Language> getLanguage();

  Future<bool> setLanguage(Language language);

  Future<ColourScheme> getColourScheme();

  Future<bool> setColourScheme(ColourScheme colourScheme);
}
