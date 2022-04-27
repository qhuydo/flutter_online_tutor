import '../../common.dart';

class SettingCardItem {
  IconData iconData;
  String title;
  Function()? onTap;
  Widget? trailingWidget;
  Color? color;

  SettingCardItem({
    required this.iconData,
    required this.title,
    this.onTap,
    this.trailingWidget,
    this.color,
  });

  static Iterable<ListTile> buildWidgetFromListItems(
    BuildContext context,
    List<SettingCardItem> items,
  ) {
    return items.asMap().entries.map((entry) {
      final idx = entry.key;
      final isLast = idx == items.length - 1;
      final listItem = entry.value;

      return ListTile(
        dense: true,
        shape: isLast
            ? const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(11),
                  bottomRight: Radius.circular(11),
                ),
              )
            : null,
        contentPadding: EdgeInsets.fromLTRB(24, 0, 16, isLast ? 8 : 0),
        leading: Icon(
          listItem.iconData,
          color: listItem.color,
        ),
        title: Text(
          listItem.title,
          style: Theme.of(context)
              .textTheme
              .button
              ?.copyWith(color: listItem.color),
        ),
        onTap: listItem.onTap,
        trailing: listItem.trailingWidget,
      );
    });
  }
}
