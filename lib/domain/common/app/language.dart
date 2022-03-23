import '../../../presentation/common.dart';

enum Language {
  followSystem,
  en,
  ja,
  vi,
}

/// Get Language enum from [value].
/// Returns enum value corresponding with [value].
/// or returns enum.en otherwise.
Language getLanguageFromString(String? value) {
  switch (value) {
    case 'followSystem':
      return Language.followSystem;
    case 'ja':
      return Language.ja;
    case 'vi':
      return Language.vi;
    default:
      return Language.en;
  }
}

extension LanguageX on Language {
  /// Get Locale object from enum value.
  ///
  /// Returns null when the enum value is Language.followSystem,
  /// returns Locale object otherwise.
  Locale? toLocale() {
    switch (this) {
      case Language.followSystem:
        return null;
      case Language.en:
        return const Locale('en');
      case Language.vi:
        return const Locale('vi');
      case Language.ja:
        return const Locale('ja');
    }
  }
}
