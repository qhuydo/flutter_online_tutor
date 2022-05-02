import 'package:flutter/material.dart';

import '../../../../domain/schedule/models/appointment_status.dart';
import '../../../common/l10n/appointment_status_display_text.dart';
import '../../../common/utils/constants.dart';

class AppointmentStatusLabel extends StatelessWidget {
  final AppointmentStatus status;

  const AppointmentStatusLabel({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color color;
    switch (status) {
      case AppointmentStatus.upcoming:
        color = Theme.of(context).colorScheme.onBackground;
        break;
      case AppointmentStatus.ongoing:
        color = Colors.green;
        break;
      case AppointmentStatus.ended:
        color = Colors.redAccent;
        break;
    }
    return Wrap(
      spacing: smallItemSpacing,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Container(
          width: smallItemSpacing,
          height: smallItemSpacing,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        Text(
          status.toText(context),
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
