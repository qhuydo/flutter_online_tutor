import 'package:auto_route/auto_route.dart';

import '../../common.dart';
import '../../common/routes/app_routes.gr.dart';
import '../../common/widgets/outlined_card.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return OutlinedCard(
      // color: Colors.blueGrey,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.primaryColor,
              theme.colorScheme.secondary,
            ],
          ),
        ),
        padding: const EdgeInsets.all(16),
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

class DashboardCardContent extends StatelessWidget {
  const DashboardCardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.totalHourLearnt('82 hours'),
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: 4,
        ),
        Wrap(
          children: [
            Text(
              context.l10n.upComingLesson,
              style: textTheme.bodyText2,
            ),
            const SizedBox(width: 8),
            Text(
              'Tue, 22 Feb 22 20:00 - 20:30',
              style: textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
        // TODO add translation
        Text(
          '10 hours until the next lesson',
          style: textTheme.bodyText2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton.icon(
              onPressed: () {
                context.router.push(MeetingRoute());
              },
              icon: const Icon(Icons.login),
              label: Text(context.l10n.enterLessonRoom),
            ),
          ],
        )
      ],
    );
  }
}
