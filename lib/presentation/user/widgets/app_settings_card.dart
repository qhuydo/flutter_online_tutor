import 'package:flutter/material.dart';
import 'package:twemoji/twemoji.dart';

import '../../common/widgets/outlined_card.dart';
import '../../utils/string_utils.dart';

class ListItem {
  IconData iconData;
  String title;
  Function()? onTap;
  Widget? trailingWidget;

  ListItem({
    required this.iconData,
    required this.title,
    this.onTap,
    this.trailingWidget,
  });
}

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

    return OutlinedCard(
      child: Column(
        children: [
          ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 20,
            ),
            leading: const Icon(
              Icons.settings,
              size: 36,
            ),
            title: Text(
              'Settings',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 0,
            ),
            child: Divider(),
          ),
          ..._settingList.asMap().entries.map((entry) {
            final idx = entry.key;
            final isLast = idx == _settingList.length - 1;
            final listItem = entry.value;

            return ListTile(
              // dense: true,
              shape: isLast
                  ? const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                    )
                  : null,
              contentPadding: EdgeInsets.fromLTRB(
                24,
                0,
                16,
                isLast ? 8 : 0,
              ),
              leading: Icon(
                listItem.iconData,
              ),
              title: Text(
                listItem.title,
                style: Theme.of(context).textTheme.button,
              ),
              onTap: listItem.onTap,
              trailing: listItem.trailingWidget,
            );
          }),
        ],
      ),
    );
  }
}
