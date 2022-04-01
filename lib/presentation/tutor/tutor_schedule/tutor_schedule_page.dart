import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/schedule/tutor_schedule/tutor_schedule_bloc.dart';
import '../../common.dart';
import '../../common/utils/default_app_bar.dart';
import 'widgets/schedule_calendar.dart';
import 'widgets/schedule_row.dart';

// TODO refactor this mess
class TutorSchedulePage extends StatelessWidget {
  final String tutorId;

  const TutorSchedulePage({
    Key? key,
    required this.tutorId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: AppLocalizations.of(context)!.bookButtonText,
      ),
      body: BlocProvider(
        create: (_) => getIt<TutorScheduleBloc>()
          ..add(TutorScheduleEvent.initialise(tutorId)),
        child: const _TutorSchedulePage(),
      ),
    );
  }
}

class _TutorSchedulePage extends StatelessWidget {
  const _TutorSchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ScheduleCalendar(),
        const SizedBox(height: 8.0),
        Expanded(
          child: BlocBuilder<TutorScheduleBloc, TutorScheduleState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: LinearProgressIndicator(),
                );
              }

              final eventMap = state.scheduleOrFailure.fold(
                    (l) {
                  log('$l');
                  return null;
                },
                    (r) => r,
              );

              if (eventMap == null) return const SizedBox();

              return ListView.builder(
                itemCount: state.currentSchedule?.length ?? 0,
                itemBuilder: (context, index) => ScheduleRow(
                  schedule: state.currentSchedule![index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
