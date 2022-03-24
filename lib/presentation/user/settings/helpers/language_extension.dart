import '../../../../domain/common/app/language.dart';
import '../../../common.dart';
import '../../../common/utils/string_utils.dart';

extension LanguageX on Language {
  String toTitle(BuildContext context) {
    switch (this) {
      case Language.followSystem:
        return context.l10n.languageDefaultValue;
      case Language.en:
        return context.l10n.languageEnglishOption;
      case Language.ja:
        return AppLocalizations.of(context)!.languageJapaneseOption;
      case Language.vi:
        return AppLocalizations.of(context)!.languageVietnameseOption;
    }
  }

  String toEmoji() {
    switch (this) {
      case Language.followSystem:
        return '⚙';
      case Language.en:
        return 'GB'.toCountryFlagFromCountryCode();
      case Language.ja:
        return 'JP'.toCountryFlagFromCountryCode();
      case Language.vi:
        return 'VN'.toCountryFlagFromCountryCode();
    }
  }
}