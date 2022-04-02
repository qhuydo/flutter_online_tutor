enum AppThemeMode {
  followSystem,
  night,
  day,
}

extension AppThemeModeX on String? {
  AppThemeMode toAppThemeMode() {
    switch (this) {
      case 'AppThemeMode.day':
        return AppThemeMode.day;
      case 'AppThemeMode.night':
        return AppThemeMode.night;
      default:
        return AppThemeMode.followSystem;
    }
  }
}
