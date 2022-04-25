import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/schedule/schedule_details/schedule_details_cubit.dart';
import '../../../../application/schedule/tutor_schedule/tutor_schedule_bloc.dart';
import '../../../../domain/schedule/interfaces/i_schedule_repository.dart';
import '../../../../domain/schedule/models/schedule.dart';
import '../../../common.dart';
import '../utils/schedule_extension.dart';
import 'book_dialog.dart';

class ScheduleRow extends StatelessWidget {
  final Schedule schedule;

  const ScheduleRow({
    Key? key,
    required this.schedule,
  }) : super(key: key);

  Widget buildTrailingWidget(BuildContext context) {
    final italicTextStyle = Theme.of(context).textTheme.button?.copyWith(
          fontStyle: FontStyle.italic,
        );
    if (schedule.isBooked) {
      return TextButton(
        child: Text(
          context.l10n.bookedLabel,
          style: italicTextStyle,
        ),
        onPressed: null,
      );
    }
    if (schedule.isReserved) {
      return TextButton(
        child: Text(
          context.l10n.reservedLabel,
          style: italicTextStyle,
        ),
        onPressed: null,
      );
    }
    if (schedule.isPastSchedule) {
      return TextButton(
        child: Text(
          context.l10n.pastScheduleLabel,
          style: italicTextStyle,
        ),
        onPressed: null,
      );
    }
    final scheduleBloc = context.read<TutorScheduleBloc>();
    return TextButton(
      child: Text(context.l10n.bookButtonText),
      onPressed: () {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) {
              return MultiBlocProvider(
                providers: [
                  BlocProvider.value(value: scheduleBloc),
                  BlocProvider(
                    create: (_) => ScheduleDetailsCubit(
                      getIt<ScheduleRepository>(),
                      schedule: schedule,
                    ),
                  ),
                ],
                child: const BookDialog(),
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
        title: Text(schedule.meetingTime.getMeetingTime(context)),
        trailing: buildTrailingWidget(context),
      ),
    );
  }
}
