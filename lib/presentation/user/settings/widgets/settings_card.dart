import 'package:flutter/material.dart';

import '../../../common/widgets/outlined_card.dart';
import '../../helpers/setting_card_item.dart';

class SettingsCard extends StatelessWidget {
  final List<SettingCardItem> settingList;
  final Widget? header;
  final IconData? headerIcon;
  final String? title;
  final VoidCallback? onHeaderTapped;

  const SettingsCard({
    Key? key,
    this.settingList = const [],
    this.headerIcon,
    this.title,
    this.header,
    this.onHeaderTapped,
  }) : super(key: key);

  Widget buildDefaultListHeader(BuildContext context) {
    return ListTile(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      contentPadding: const EdgeInsets.only(
        top: 8,
        left: 20,
        right: 20,
      ),
      leading: Icon(
        headerIcon ?? Icons.settings,
        size: 32,
      ),
      title: Text(
        title ?? '',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      onTap: onHeaderTapped,
    );
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedCard(
      child: Column(
        children: [
          header != null ? header! : buildDefaultListHeader(context),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 0,
            ),
            child: Divider(),
          ),
          ...SettingCardItem.buildWidgetFromListItems(context, settingList),
        ],
      ),
    );
  }
}
