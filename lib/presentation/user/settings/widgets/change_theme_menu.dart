import '../../../common.dart';

enum AppThemeMode {
  followSystem,
  night,
  day,
}

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

PopupMenuButton changeLanguagePopupMenuButton(BuildContext context, {Key? key}) {
  return PopupMenuButton(
    key: key,
    onSelected: (_) {},
    itemBuilder: (context) {
      return AppThemeMode.values
          .map((themeMode) => PopupMenuItem(
        child: Text(
          themeMode.toOptionString(context),
        ),
      ))
          .toList();
    },
    child: Text(
      context.l10n.darkModeDefaultValue,
      style: Theme.of(context).textTheme.caption,
    ),
  );
}