import 'package:auto_route/auto_route.dart';

import '../../../../domain/course_ebook/models/course.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../user/profile/widgets/level_form_dropdown.dart';
import 'course_carousel_card_content.dart';

class CourseCarouselCard extends StatelessWidget {
  final Course course;

  const CourseCarouselCard({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          context.router.push(
            CourseDetailsRoute(courseId: course.id, thumbnail: ''),
          );
        },
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 13 / 9,
              child: Image.network(
                // 'assets/images/course.png',
                course.imageUrl,
                fit: BoxFit.fitWidth,
                height: double.infinity,
                width: double.infinity,
              ),
              // child: Container(
              //   color: Colors.blue,
              // ),
            ),
            CourseCarouselCardContent(course: course),
            Text(
              course.level.toDisplayString(context),
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
