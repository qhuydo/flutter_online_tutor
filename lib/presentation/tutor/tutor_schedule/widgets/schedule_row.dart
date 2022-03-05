import 'package:flutter/material.dart';

import '../../../common.dart';
import '../event.dart';
import 'book_dialog.dart';

class ScheduleRow extends StatelessWidget {
  final ScheduleEvent event;
  final DateTime date;

  const ScheduleRow({
    Key? key,
    required this.event,
    required this.date,
  }) : super(key: key);

  Widget buildTrailingWidget(BuildContext context) {
    switch (event.status) {
      case ScheduleStatus.booked:
        return TextButton(
          child: Text(
            'Booked',
            style: Theme.of(context).textTheme.button?.copyWith(
                  fontStyle: FontStyle.italic,
                ),
          ),
          onPressed: null,
        );
      case ScheduleStatus.reserved:
        return TextButton(
          child: Text(
            'Reserved',
            style: Theme.of(context).textTheme.button?.copyWith(
                  fontStyle: FontStyle.italic,
                ),
          ),
          onPressed: null,
        );
      case ScheduleStatus.empty:
        return TextButton(
          child: const Text(
            'Book',
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return BookDialog(
                  event: event,
                  date: date
                );
              }
            );
          },
        );
    }
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
        title: Text(event.title),
        trailing: buildTrailingWidget(context),
      ),
    );
  }
}
