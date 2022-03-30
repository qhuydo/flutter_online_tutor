import '../../tutor/models/language.dart';
import '../constants/languages.dart';

class LanguageConverter {
  static List<Language> parseFromLanguageKeyString(String keyString) {
    final keys = keyString.split(',');
    final languages = <Language>[];

    for (final key in keys) {
      final language = languageMap[key.trim().toLowerCase()];
      if (language != null) {
        languages.add(language);
      }
    }
    return languages;
  }
}
