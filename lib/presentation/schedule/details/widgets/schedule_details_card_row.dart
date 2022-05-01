import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../common/utils/constants.dart';

class ScheduleDetailsCardRow extends StatelessWidget {
  final IconData iconData;
  final String title;
  final Either<String, Widget> stringOrWidgetContent;

  const ScheduleDetailsCardRow({
    Key? key,
    required this.iconData,
    required this.title,
    required this.stringOrWidgetContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData),
        const SizedBox(width: smallItemSpacing),
        Expanded(child: Text(title)),
        const SizedBox(width: itemSpacing),
        Flexible(
          child: stringOrWidgetContent.fold(
            (string) => Text(
              string,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            (widget) => widget,
          ),
        ),
      ],
    );
  }
}
