import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';

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
  final SyllabusItem item;

  const SyllabusListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textColour = item.canPreview ? null : Theme.of(context).disabledColor;
    return ListTile(
      onTap: item.canPreview
          ? () {
              context.router.push(CourseSyllabusRoute(
                courseId: '',
                chapterId: item.orderCourse,
              ));
            }
          : null,
      leading: Text(
        '${item.orderCourse + 1}',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: textColour,
              fontWeight: FontWeight.bold,
            ),
        textAlign: TextAlign.center,
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
