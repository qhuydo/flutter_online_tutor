import '../../common.dart';
import 'course_card_content.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key}) : super(key: key);

  static const cardHeight = 400.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: Card(
            child: CourseCardContent(),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Theme.of(context).splashColor,
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
