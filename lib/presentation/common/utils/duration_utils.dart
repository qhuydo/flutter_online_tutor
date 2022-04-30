import 'package:duration/locale.dart';

import '../../common.dart';
import '../l10n/duration_locale_ja.dart';
import '../l10n/duration_locale_vi.dart';

extension GetDurationLocale on BuildContext {
  DurationLocale get durationLocale {
    final locale = l10n.localeName;
    final DurationLocale durationLocale;
    if (locale == 'ja') {
      durationLocale = const DurationLocaleJa();
    } else if (locale == 'vi') {
      durationLocale = const DurationLocaleVi();
    } else {
      durationLocale = const EnglishDurationLocale();
    }
    return durationLocale;
  }
}
