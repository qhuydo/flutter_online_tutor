import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/schedule/schedule_details/schedule_details_bloc.dart';
import '../../../../domain/schedule/models/appointment.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/widgets/outlined_card.dart';

class StudentRequestCard extends StatefulWidget {
  const StudentRequestCard({Key? key}) : super(key: key);

  @override
  State<StudentRequestCard> createState() => _StudentRequestCardState();
}

class _StudentRequestCardState extends State<StudentRequestCard> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleDetailsBloc, ScheduleDetailsState>(
      buildWhen: (previous, current) =>
          previous.appointment != current.appointment,
      builder: (_, state) {
        final textTheme = Theme.of(context).textTheme;
        final appointment = state.appointment;
        _controller.text = state.appointment.studentRequest;

        return Padding(
          padding: const EdgeInsets.only(
            top: 0,
            left: smallItemSpacing,
            right: smallItemSpacing,
            bottom: smallItemSpacing,
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 800),
              child: OutlinedCard(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(itemSpacing),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            context.l10n.noteLabel,
                            style: textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Expanded(child: SizedBox()),
                          TextButton.icon(
                            onPressed: () => showEditNoteDialog(
                              context,
                              appointment,
                            ),
                            icon: const Icon(Icons.edit),
                            label: Text(context.l10n.editLabel),
                          ),
                        ],
                      ),
                      const SizedBox(height: smallItemSpacing),
                      Text(appointment.studentRequest)
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void showEditNoteDialog(
    BuildContext context,
    Appointment appointment,
  ) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        scrollable: true,
        title: Text(context.l10n.editLabel),
        content: TextField(
          controller: _controller,
          decoration: const InputDecoration(border: OutlineInputBorder()),
          minLines: 5,
          maxLines: 20,
        ),
        actions: [
          TextButton(
            child: Text(context.l10n.cancelButtonLabel),
            onPressed: () {
              Navigator.of(context).pop();
              _controller.text = appointment.studentRequest;
            },
          ),
          TextButton(
            child: Text(context.l10n.okButton),
            onPressed: () {
              Navigator.of(context).pop();
              context.read<ScheduleDetailsBloc>().add(
                    ScheduleDetailsEvent.studentRequestEdited(_controller.text),
                  );
              _controller.text = appointment.studentRequest;
            },
          ),
        ],
      ),
    );
  }
}
