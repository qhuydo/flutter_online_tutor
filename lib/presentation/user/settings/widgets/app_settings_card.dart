import 'package:twemoji/twemoji.dart';

import '../../../common.dart';
import '../../../common/utils/string_utils.dart';
import '../../helpers/setting_card_item.dart';
import 'change_language_modal.dart';
import 'change_theme_menu.dart';
import 'settings_card.dart';

class AppSettingsCard extends StatefulWidget {
  const AppSettingsCard({Key? key}) : super(key: key);

  @override
  State<AppSettingsCard> createState() => _AppSettingsCardState();
}

class _AppSettingsCardState extends State<AppSettingsCard> {
  final GlobalKey _changeThemeMenuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final changeLanguageButton = changeLanguagePopupMenuButton(
      context,
      key: _changeThemeMenuKey,
    );

    final _settingList = [
      SettingCardItem(
        iconData: Icons.dark_mode_outlined,
        title: context.l10n.darkModeLabel,
        onTap: () {
          dynamic state = _changeThemeMenuKey.currentState;
          state?.showButtonMenu();
        },
        trailingWidget: changeLanguageButton,
      ),
      SettingCardItem(
        iconData: Icons.palette_outlined,
        title: context.l10n.colorPaletteLabel,
        onTap: () {},
        trailingWidget: Container(
          height: 32,
          width: 32,
          color: Colors.blue,
        ),
      ),
      SettingCardItem(
        iconData: Icons.language,
        title: context.l10n.languageLabel,
        onTap: () {
          // showModalBottomSheet(
          //   context: context,
          //   isScrollControlled: true,
          //   shape: const RoundedRectangleBorder(
          //     borderRadius: BorderRadius.only(
          //       topRight: Radius.circular(16),
          //       topLeft: Radius.circular(16),
          //     ),
          //   ),
          //   builder: (_) => const ChangeLanguageModal(),
          // );
          showDialog(
              context: context,
              builder: (context) {
                return const Dialog(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ChangeLanguageModal(),
                  ),
                );
              });
        },
        trailingWidget: Twemoji(
          emoji: 'GB'.toCountryFlagFromCountryCode(),
          width: 32,
          height: 32,
        ),
      )
    ];

    return SettingsCard(
      settingList: _settingList,
      headerIcon: Icons.settings,
      title: context.l10n.settingsCardHeader,
    );
  }
}
