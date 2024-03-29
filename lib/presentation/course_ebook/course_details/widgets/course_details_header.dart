import '../../../../domain/course_ebook/models/course.dart';
import '../../../common.dart';

class CourseDetailsHeader extends StatelessWidget {
  final Course course;

  const CourseDetailsHeader({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: itemSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            course.name,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: smallItemSpacing),
          Text(course.description),
          // const SizedBox(height: itemSmallSpacing),
          // const Divider(),
        ],
      ),
    );
  }
}
