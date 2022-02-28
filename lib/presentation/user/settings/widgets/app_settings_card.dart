import 'package:twemoji/twemoji.dart';

import '../../../common.dart';
import '../../../utils/string_utils.dart';
import '../../helpers/setting_card_item.dart';
import 'settings_card.dart';

class AppSettingsCard extends StatelessWidget {
  const AppSettingsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _settingList = [
      SettingCardItem(
        iconData: Icons.dark_mode_outlined,
        title: AppLocalizations.of(context)!.darkModeLabel,
        onTap: () {},
        trailingWidget: Text(
          AppLocalizations.of(context)!.darkModeDefaultValue,
          style: Theme.of(context).textTheme.caption,
        ),
      ),
      SettingCardItem(
        iconData: Icons.palette_outlined,
        title: AppLocalizations.of(context)!.colorPaletteLabel,
        onTap: () {},
        trailingWidget: Container(
          height: 32,
          width: 32,
          color: Colors.blue,
        ),
      ),
      SettingCardItem(
        iconData: Icons.language,
        title: AppLocalizations.of(context)!.languageLabel,
        onTap: () {},
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
      title: AppLocalizations.of(context)!.settingsCardHeader,
    );
  }
}
