import 'package:flutter/material.dart';

import '../../common.dart';

class ListItem {
  IconData iconData;
  String title;
  Function(BuildContext context) onTap;
  Color? color;

  ListItem(
      {required this.iconData,
      required this.title,
      required this.onTap,
      this.color});
}

class UserSettingsRow extends StatelessWidget {
  UserSettingsRow({Key? key}) : super(key: key);

  final _settingList = [
    ListItem(
      iconData: Icons.edit,
      title: 'Edit profile',
      onTap: (context) {},
    ),
    ListItem(
      iconData: Icons.password,
      title: 'Change password',
      onTap: (context) {},
    ),
    ListItem(
      iconData: Icons.account_balance_wallet,
      title: 'My wallet',
      onTap: (context) {},
    ),
    ListItem(
      iconData: Icons.logout,
      title: 'Sign out',
      onTap: (context) {},
      color: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1.25,
        ),
      ),
      elevation: 0,
      child: Column(
        children: [
          ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            onTap: () {},
            contentPadding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 16,
            ),
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 36,
            ),
            title: Text(
              'Nguyen Van A',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            subtitle: Text(
              'example@email.com',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(),
            ),
            trailing: Icon(
              Icons.navigate_next,
              size: 32,
              color: Theme.of(context).buttonTheme.colorScheme?.onSurface,
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
              dense: true,
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
                color: listItem.color,
              ),
              title: Text(
                listItem.title,
                style: Theme.of(context).textTheme.button?.copyWith(
                      color: listItem.color,
                    ),
              ),
              onTap: () {
                listItem.onTap(context);
              },
              trailing: const Icon(
                Icons.navigate_next,
              ),
            );
          }),
        ],
      ),
    );
  }
}
