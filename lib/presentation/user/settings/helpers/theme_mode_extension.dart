import '../../../../domain/common/app/theme_mode.dart';
import '../../../common.dart';
export '../../../../domain/common/app/theme_mode.dart';

extension AppThemeModeExtension on AppThemeMode {
  String toOptionString(BuildContext context) {
    switch (this) {
      case AppThemeMode.followSystem:
        return context.l10n.darkModeDefaultOption;
      case AppThemeMode.day:
        return context.l10n.darkModeDisableOption;
      case AppThemeMode.night:
        return context.l10n.darkModeEnableOption;
    }
  }

  String toStatusString(BuildContext context) {
    switch (this) {
      case AppThemeMode.followSystem:
        return context.l10n.darkModeDefaultValue;
      case AppThemeMode.day:
        return context.l10n.darkModeDisabledValue;
      case AppThemeMode.night:
        return context.l10n.darkModeEnabledValue;
    }
  }
}
