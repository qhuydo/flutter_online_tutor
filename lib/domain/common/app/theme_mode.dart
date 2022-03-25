enum AppThemeMode {
  followSystem,
  night,
  day,
}

extension AppThemeModeX on String? {
  AppThemeMode toAppThemeMode() {
    switch (this) {
      case 'ThemeMode.day':
        return AppThemeMode.day;
      case 'ThemeMode.night':
        return AppThemeMode.night;
      default:
        return AppThemeMode.followSystem;
    }
  }
}
