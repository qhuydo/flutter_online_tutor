import 'package:flutter/material.dart';

import '../../../../domain/schedule/models/schedule.dart';
import '../../../common.dart';
import '../utils/schedule_extension.dart';
import 'book_dialog.dart';

// TODO Update translation
class ScheduleRow extends StatelessWidget {
  final Schedule schedule;

  const ScheduleRow({
    Key? key,
    required this.schedule,
  }) : super(key: key);

  Widget buildTrailingWidget(BuildContext context) {
    if (schedule.isBooked) {
      return TextButton(
        child: Text(
          'Booked',
          style: Theme.of(context).textTheme.button?.copyWith(
                fontStyle: FontStyle.italic,
              ),
        ),
        onPressed: null,
      );
    }
    if (schedule.isReserved) {
      return TextButton(
        child: Text(
          'Reserved',
          style: Theme.of(context).textTheme.button?.copyWith(
                fontStyle: FontStyle.italic,
              ),
        ),
        onPressed: null,
      );
    }
    return TextButton(
      child: const Text(
        'Book',
      ),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return BookDialog(
                schedule: schedule,
              );
            });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 4.0,
      ),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        onTap: () {},
        title: Text(schedule.getMeetingTime(context)),
        trailing: buildTrailingWidget(context),
      ),
    );
  }
}
