import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../domain/course_ebook/models/course_topic.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';

class SyllabusListItem extends StatelessWidget {
  final CourseTopic item;

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
                chapterId: item.order,
              ));
            }
          : null,
      leading: Text(
        '${item.order + 1}',
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
