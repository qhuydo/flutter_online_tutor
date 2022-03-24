import 'dart:ui';

import '../../../domain/common/app/language.dart';

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
