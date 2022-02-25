import 'package:auto_route/auto_route.dart';

import '../../common.dart';
import '../../course_ebook/widgets/course_horizontal_list.dart';
import '../../routes/app_routes.gr.dart';

class RecommendedCourses extends StatelessWidget {
  const RecommendedCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.ideographic,
          children: [
            // Twemoji(emoji: '🌟'),
            Text(
              '📕 ' + AppLocalizations.of(context)!.recommendedCourses,
              maxLines: 2,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    // decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
              textAlign: TextAlign.start,
            ),
            TextButton(
              onPressed: () {
                context.navigateTo(const CourseRoute());
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppLocalizations.of(context)!.seeMoreButtonText,
                  ),
                  const SizedBox(width: 4),
                  const Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
          ],
        ),
        const CourseHorizontalList(),
      ],
    );
  }
}
