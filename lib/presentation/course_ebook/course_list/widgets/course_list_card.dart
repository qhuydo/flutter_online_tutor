import 'package:auto_route/auto_route.dart';

import '../../../../domain/course_ebook/models/course.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/widgets/outlined_card.dart';
import '../../utils/constants.dart';
import 'course_carousel_card_content.dart';

class CourseListCard extends StatelessWidget {
  final Course course;

  const CourseListCard({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedCard(
      onTap: () => context.router.push(
        CourseDetailsRoute(courseId: course.id, thumbnail: ''),
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: courseThumbnailRatio,
            child: Image.network(
              course.imageUrl,
              fit: BoxFit.fitWidth,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          CourseCarouselCardContent(course: course),
        ],
      ),
    );
  }
}
