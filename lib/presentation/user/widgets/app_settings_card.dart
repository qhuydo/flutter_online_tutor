import 'package:flutter/material.dart';
import 'package:twemoji/twemoji.dart';

import '../../utils/string_utils.dart';
import '../helpers/list_item.dart';
import 'settings_card.dart';

class AppSettingsCard extends StatelessWidget {
  const AppSettingsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _settingList = [
      ListItem(
        iconData: Icons.dark_mode_outlined,
        title: 'Dark mode',
        onTap: () {},
        trailingWidget: Text(
          'Default',
          style: Theme.of(context).textTheme.caption,
        ),
      ),
      ListItem(
        iconData: Icons.palette_outlined,
        title: 'Color palette',
        onTap: () {},
        trailingWidget: Container(
          height: 32,
          width: 32,
          color: Colors.blue,
        ),
      ),
      ListItem(
        iconData: Icons.language,
        title: 'Language',
        onTap: () {},
        trailingWidget: Twemoji(
          emoji: 'VN'.toCountryFlagFromCountryCode(),
          width: 32,
          height: 32,
        ),
      )
    ];

    return SettingsCard(
      settingList: _settingList,
      headerIcon: Icons.settings,
      title: 'Settings',
    );
  }
}
