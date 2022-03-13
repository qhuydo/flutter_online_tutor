import 'package:auto_route/auto_route.dart';

import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import 'course_carousel_card_content.dart';

class CourseListCard extends StatelessWidget {
  final String thumbnail;

  const CourseListCard({
    Key? key,
    required this.thumbnail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(
            CourseDetailsRoute(courseId: '', thumbnail: thumbnail),
          );
        },
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 13 / 9,
              child: Image.asset(
                thumbnail,
                fit: BoxFit.fitWidth,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            const CourseCarouselCardContent(),
          ],
        ),
      ),
    );
  }
}
