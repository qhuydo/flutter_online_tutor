import 'package:auto_route/auto_route.dart';

import '../../../../domain/schedule/models/appointment.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/widgets/count_down_timer.dart';

class ScheduleCardButtonGroup extends StatelessWidget {
  final ValueChanged<Appointment>? onCancelButtonTapped;
  final Appointment appointment;
  final bool showCancelButton;

  const ScheduleCardButtonGroup({
    Key? key,
    required this.appointment,
    this.onCancelButtonTapped,
    this.showCancelButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        crossAxisAlignment: WrapCrossAlignment.end,
        alignment: WrapAlignment.end,
        children: [
          if (showCancelButton)
            CountDownTimer(
              endTime: appointment.cancelDeadline,
              builder: (_, __) {
                return Visibility(
                  visible: appointment.isCancelable,
                  child: OutlinedButton.icon(
                    onPressed: () => onCancelButtonTapped?.call(appointment),
                    icon: const Icon(Icons.cancel_outlined),
                    label: Text(
                      context.l10n.cancelButtonLabel,
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Theme.of(context).cardColor,
                      primary: Colors.red,
                    ),
                  ),
                );
              },
            ),
          OutlinedButton.icon(
            onPressed: () {
              context.router.push(MessageDetailsRoute(tutorId: ''));
            },
            icon: const Icon(Icons.chat_bubble_outline),
            label: Text(
              AppLocalizations.of(context)!.chatButtonText,
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: Theme.of(context).cardColor,
            ),
          ),
        ],
      ),
    );
  }
}
