import '../../common.dart';
import '../../tutor/widgets/topic_chip.dart';
import 'course_card_content.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key}) : super(key: key);

  static const cardHeight = 400.0;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 13/9,
              // child: Image.asset(
              //   'assets/images/course.png',
              //   fit: BoxFit.fitWidth,
              //   height: double.infinity,
              //   width: double.infinity,
              // ),
              child: Container(
                color: Colors.blue,
              ),
            ),
            const CourseCardContent(),
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
