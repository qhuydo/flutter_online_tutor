import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:twemoji/twemoji.dart';

import '../../../../application/schedule/schedule_details/schedule_details_cubit.dart';
import '../../../../application/schedule/tutor_schedule/tutor_schedule_bloc.dart';
import '../../../../domain/schedule/models/schedule.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/failure_messages.dart';
import '../utils/schedule_extension.dart';

class BookDialog extends StatelessWidget {
  const BookDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScheduleDetailsCubit, ScheduleDetailsState>(
      listenWhen: (previous, current) =>
          previous.scheduleFailureOrSuccess != current.scheduleFailureOrSuccess,
      listener: (context, state) => state.scheduleFailureOrSuccess?.fold(
        // TODO update translation
        (failure) async {
          await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Error'),
              content: Text(failure.toText(context)),
            ),
          );
          context.router.pop();
        },
        (r) async {
          await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(context.l10n.bookDialogTitle),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Twemoji(
                    emoji: '🆗',
                    height: 60,
                    width: 60,
                  ),
                  Text(
                    'Check your mail to see the schedule details',
                  ),
                ],
              ),
            ),
          );
          context
            ..read<TutorScheduleBloc>()
                .add(TutorScheduleEvent.initialise(state.schedule.tutorId))
            ..router.pop();
        },
      ),
      builder: (context, state) {
        final schedule = state.schedule;

        return IgnorePointer(
          ignoring: state.isLoading,
          child: AlertDialog(
            title: Text(context.l10n.bookDialogTitle),
            content: Stack(
              children: [
                buildDialogContent(schedule, context),
                Visibility(
                  visible: state.isLoading,
                  child: Positioned.fill(
                    child: Container(
                      color: Theme.of(context).backgroundColor.withOpacity(0.6),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              OutlinedButton(
                onPressed: () {
                  context.router.pop();
                },
                child: Text(context.l10n.cancelButtonLabel),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<ScheduleDetailsCubit>().onSubmitted();
                },
                child: Text(context.l10n.bookButtonText),
              ),
            ],
          ),
        );
      },
    );
  }

  SizedBox buildDialogContent(Schedule schedule, BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final formatter = DateFormat.yMMMMd(
      Localizations.localeOf(context).languageCode,
    );
    final String formattedDate = formatter.format(schedule.meetingTime.start);

    return SizedBox(
      width: deviceWidth <= 800 ? deviceWidth : 800,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text(
                '$formattedDate ${schedule.meetingTime.getMeetingTime(context)}',
                maxLines: 4,
              ),
            ),
            ListTile(
              title: Text(context.l10n.balanceLabel),
              // TODO get balance from data
              trailing: Text(context.l10n.balanceStatusText(1)),
            ),
            ListTile(
              title: Text(context.l10n.priceTextLabel),
              // TODO get price from data
              trailing: Text(context.l10n.priceValue(1)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: itemSpacing,
                vertical: smallItemSpacing,
              ),
              child: Text(
                context.l10n.noteLabel,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: const InputDecoration(border: OutlineInputBorder()),
                minLines: 5,
                maxLines: 20,
                onChanged: (value) {
                  context.read<ScheduleDetailsCubit>().onNoteChanged(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
