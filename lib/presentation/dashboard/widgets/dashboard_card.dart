import 'package:auto_route/auto_route.dart';

import '../../common.dart';
import '../../routes/app_routes.gr.dart';

class DashboardCard extends StatelessWidget {
  const DashboardCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.totalHourLearnt('82 hours'),
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 4,
            ),
            Wrap(
              children: [
                Text(
                  AppLocalizations.of(context)!.upComingLesson,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(width: 8),
                Text(
                  'Tue, 22 Feb 22 20:00 - 20:30',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    context.router.push(MeetingRoute());
                  },
                  child: Row(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.enterLessonRoom,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(Icons.login),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
