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
        return AppLocalizations.of(context)!.darkModeDefaultOption;
      case AppThemeMode.day:
        return AppLocalizations.of(context)!.darkModeDisableOption;
      case AppThemeMode.night:
        return AppLocalizations.of(context)!.darkModeEnableOption;
    }
  }

  String toStatusString(BuildContext context) {
    switch (this) {
      case AppThemeMode.followSystem:
        return AppLocalizations.of(context)!.darkModeDefaultValue;
      case AppThemeMode.day:
        return AppLocalizations.of(context)!.darkModeDisabledValue;
      case AppThemeMode.night:
        return AppLocalizations.of(context)!.darkModeEnabledValue;
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
      AppLocalizations.of(context)!.darkModeDefaultValue,
      style: Theme.of(context).textTheme.caption,
    ),
  );
}