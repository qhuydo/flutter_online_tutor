import 'language.dart';

abstract class AppRepository {
  Future<Language> getLanguage();

  Future<bool> setLanguage(Language language);
}
