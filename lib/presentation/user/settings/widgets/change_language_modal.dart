import 'package:twemoji/twemoji.dart';

import '../../../common.dart';
import '../../../common/utils/string_utils.dart';

enum Language {
  systemDefault,
  en,
  vi,
  ja,
}

extension LanguageExtension on Language {
  String toTitle(BuildContext context) {
    switch (this) {
      case Language.systemDefault:
        return AppLocalizations.of(context)!.languageDefaultValue;
      case Language.en:
        return AppLocalizations.of(context)!.languageEnglishOption;
      case Language.ja:
        return AppLocalizations.of(context)!.languageJapaneseOption;
      case Language.vi:
        return AppLocalizations.of(context)!.languageVietnameseOption;
    }
  }

  String toEmoji() {
    switch (this) {
      case Language.systemDefault:
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

class ChangeLanguageModal extends StatefulWidget {
  const ChangeLanguageModal({Key? key}) : super(key: key);

  @override
  State<ChangeLanguageModal> createState() => _ChangeLanguageModalState();
}

class _ChangeLanguageModalState extends State<ChangeLanguageModal> {
  Language _language = Language.systemDefault;

  @override
  void initState() {
    _language = Language.systemDefault;
    super.initState();
  }

  void _onLanguageChanged(Language? value) {
    setState(() {
      if (value != null) {
        _language = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: Language.values
          .map(
            (language) => RadioListTile(
              value: language,
              groupValue: _language,
              onChanged: _onLanguageChanged,
              title: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Twemoji(emoji: language.toEmoji()),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(language.toTitle(context)),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
