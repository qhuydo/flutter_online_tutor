import 'package:auto_route/auto_route.dart';

import '../../../common.dart';
import '../../../routes/app_routes.gr.dart';
import '../../../tutor/list/widgets/topic_chip.dart';
import 'course_carousel_card_content.dart';

class CourseCarouselCard extends StatelessWidget {
  final String thumbnail;

  const CourseCarouselCard({
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
                // 'assets/images/course.png',
                thumbnail,
                fit: BoxFit.fitWidth,
                height: double.infinity,
                width: double.infinity,
              ),
              // child: Container(
              //   color: Colors.blue,
              // ),
            ),
            const CourseCarouselCardContent(),
            Container(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
              child: Row(
                children: const [
                  TopicChip(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
