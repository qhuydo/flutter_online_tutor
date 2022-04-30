import 'package:auto_route/auto_route.dart';
import 'package:duration/duration.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../common.dart';
import '../../common/l10n/schedule_display_text.dart';
import '../../common/routes/app_routes.gr.dart';
import '../../common/utils/constants.dart';
import '../../common/utils/duration_utils.dart';
import '../../common/widgets/outlined_card.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return OutlinedCard(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.primaryColor,
              theme.colorScheme.secondary,
            ],
          ),
        ),
        padding: const EdgeInsets.all(itemSpacing),
        child: Theme(
          data: theme.copyWith(
            textTheme: theme.textTheme.apply(
              bodyColor: theme.colorScheme.onPrimary,
              displayColor: theme.colorScheme.onPrimary,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: theme.colorScheme.onSecondary,
              ),
            ),
          ),
          child: const DashboardCardContent(),
        ),
      ),
    );
  }
}

// TODO update translation
class DashboardCardContent extends StatelessWidget {
  const DashboardCardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final locale = context.l10n.localeName;
    final dateFormatter = DateFormat.yMEd(locale);
    final durationLocale = context.durationLocale;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<UpcomingClassBloc, UpcomingClassState>(
          buildWhen: (previous, current) {
            return previous.totalLearningTime != current.totalLearningTime;
          },
          builder: (context, state) {
            final totalLearningTime = prettyDuration(
              state.totalLearningTime,
              tersity: DurationTersity.minute,
              upperTersity: DurationTersity.hour,
              locale: durationLocale,
            );
            return Text(
              context.l10n.totalHourLearnt(totalLearningTime),
              style: Theme.of(context).textTheme.headline6,
            );
          },
        ),
        const SizedBox(height: smallItemSpacing / 2),
        BlocBuilder<UpcomingClassBloc, UpcomingClassState>(
          buildWhen: (previous, current) {
            return previous.nextClass != current.nextClass;
          },
          builder: (context, state) {
            if (state.nextClass == null) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'No upcoming classes',
                    style: textTheme.bodyText1
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Row(children: const []),
                ],
              );
            }

            final appointment = state.nextClass!;
            final meetingTime = appointment.meetingTime;
            final startTime = appointment.meetingTime.start;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Wrap(
                  // crossAxisAlignment: WrapCrossAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.end,
                  children: [
                    Text(
                      context.l10n.upComingLesson,
                      style: textTheme.bodyText2,
                    ),
                    const SizedBox(width: smallItemSpacing),
                    Text(
                      '${dateFormatter.format(startTime)}'
                      ' ${meetingTime.getMeetingTime(context)}',
                      style: textTheme.bodyText1
                          ?.copyWith(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(height: itemSpacing),
                // Text(
                //   '10 hours until the next lesson',
                //   style: textTheme.bodyText2,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        context.router.push(MeetingRoute(
                          appointment: appointment,
                        ));
                      },
                      icon: const Icon(Icons.login),
                      label: Text(context.l10n.enterLessonRoom),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
