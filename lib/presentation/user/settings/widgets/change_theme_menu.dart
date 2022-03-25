import '../../../common.dart';
import '../helpers/theme_mode_extension.dart';

PopupMenuButton changeLanguagePopupMenuButton(
  BuildContext context, {
  Key? key,
}) {
  return PopupMenuButton(
    key: key,
    onSelected: (_) {},
    itemBuilder: (context) {
      return AppThemeMode.values
          .map(
            (themeMode) => PopupMenuItem(
              child: Text(
                themeMode.toOptionString(context),
              ),
            ),
          )
          .toList();
    },
    child: Text(
      context.l10n.darkModeDefaultValue,
      style: Theme.of(context).textTheme.caption,
    ),
  );
}
