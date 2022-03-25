import '../../../domain/common/app/theme_mode.dart';
import '../../common.dart';

export '../../../domain/common/app/theme_mode.dart';

extension AppThemeModeX on AppThemeMode {
  ThemeMode toThemeMode() {
    switch (this) {
      case AppThemeMode.followSystem:
        return ThemeMode.system;
      case AppThemeMode.night:
        return ThemeMode.dark;
      case AppThemeMode.day:
        return ThemeMode.light;
    }
  }
}

extension ThemeModeX on ThemeMode {
  AppThemeMode toThemeMode() {
    switch (this) {
      case ThemeMode.system:
        return AppThemeMode.followSystem;
      case ThemeMode.light:
        return AppThemeMode.day;
      case ThemeMode.dark:
        return AppThemeMode.night;
    }
  }
}
