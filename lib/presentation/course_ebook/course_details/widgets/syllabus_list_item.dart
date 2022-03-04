import 'package:flutter/material.dart';

import '../../../common.dart';

class SyllabusItem {
  String name;

  // chapter
  int orderCourse;
  bool canPreview;

  SyllabusItem({
    required this.name,
    required this.orderCourse,
    required this.canPreview,
  });
}

class SyllabusListItem extends StatelessWidget {
  SyllabusItem item;

  SyllabusListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textColour = item.canPreview ? null : Theme.of(context).disabledColor;
    return ListTile(
      onTap: item.canPreview ? () {} : null,
      // contentPadding: const EdgeInsets.symmetric(vertical: smallItemSpacing),
      leading: Container(
        // padding: const EdgeInsets.all(8),
        // decoration: BoxDecoration(
        //   shape: BoxShape.rectangle,
        //   color: Theme.of(context).primaryColorLight,
        //   border: Border.all(
        //     color: Theme.of(context).primaryColorDark,
        //     width: 1.25,
        //   ),
        //   borderRadius: BorderRadius.circular(8),
        // ),
        // child: AspectRatio(
        //   aspectRatio: 1,
        //   child: Center(
        //     child: Text(
        //       '${item.orderCourse + 1}',
        //       style: Theme.of(context).textTheme.titleLarge?.copyWith(
        //         color: textColour,
        //         fontWeight: FontWeight.bold,
        //       ),
        //       textAlign: TextAlign.center,
        //     ),
        //   ),
        // ),
        child: Text(
          '${item.orderCourse + 1}',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: textColour,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      title: Text(
        item.name,
        style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: textColour,
            ),
      ),
      trailing: item.canPreview ? const Icon(Icons.navigate_next) : null,
    );
  }
}
