import 'package:auto_route/auto_route.dart';
import 'package:flutter/rendering.dart';

import '../../common.dart';
import '../../course_ebook/widgets/course_carousel.dart';
import '../../routes/app_routes.gr.dart';

class RecommendedCourses extends StatelessWidget {
  const RecommendedCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.start,
            runAlignment: WrapAlignment.spaceBetween,
            alignment: WrapAlignment.spaceBetween,
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
                child: Wrap(
                  // crossAxisAlignment: CrossAxisAlignment.center,
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
        ),
        const CourseCarousel(),
      ],
    );
  }
}
