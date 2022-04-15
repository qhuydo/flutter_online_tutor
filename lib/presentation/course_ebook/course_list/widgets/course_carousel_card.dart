import 'package:auto_route/auto_route.dart';

import '../../../../domain/course_ebook/models/course.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/utils/image_utils.dart';
import '../../../common/widgets/outlined_card.dart';
import '../../utils/constants.dart';
import 'course_carousel_card_content.dart';

class CourseCarouselCard extends StatelessWidget {
  final Course course;

  const CourseCarouselCard({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedCard(
      childInsideInkwell: false,
      onTap: () => context.router.push(
        CourseDetailsRoute(courseId: course.id, thumbnail: ''),
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: courseThumbnailRatio,
            child: Image.network(
              // 'assets/images/course.png',
              course.imageUrl,
              fit: BoxFit.fitWidth,
              height: double.infinity,
              width: double.infinity,
              errorBuilder: getDefaultImageErrorBuilder,
              loadingBuilder: getDefaultImageLoadingBuilder,
            ),
            // child: Container(
            //   color: Colors.blue,
            // ),
          ),
          CourseCarouselCardContent(course: course),
        ],
      ),
    );
  }
}
