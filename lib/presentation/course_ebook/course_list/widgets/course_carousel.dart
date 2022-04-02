import '../../../../domain/course_ebook/models/course.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/widgets/dots_indicator.dart';
import 'course_carousel_card.dart';

class CourseCarousel extends StatefulWidget {
  final List<Course> courses;

  const CourseCarousel({
    Key? key,
    required this.courses,
  }) : super(key: key);

  @override
  State<CourseCarousel> createState() => _CourseCarouselState();
}

class _CourseCarouselState extends State<CourseCarousel> {
  final _controller = PageController(
    viewportFraction: goldenRatioInverse,
  );

  static const _kDuration = Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  late double cardWidth;
  late double cardHeight;

  Widget _buildCourseList(BuildContext context, int index) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        double value = 1.0;
        if (_controller.position.haveDimensions) {
          value = _controller.page! - index;
          value = (1 - (value.abs() * .25)).clamp(0.0, 1.0);
        }

        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * cardHeight,
            width: Curves.easeOut.transform(value) * cardWidth,
            child: child,
          ),
        );
      },
      child: CourseCarouselCard(
        course: widget.courses[index % widget.courses.length],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    cardWidth = deviceWidth * goldenRatioInverse;
    cardHeight = deviceWidth;

    // cardWidth = 288;
    // cardHeight = cardWidth * goldenRatio;

    return Column(
      children: [
        if (widget.courses.isNotEmpty)
          SizedBox(
            height: cardHeight,
            child: PageView.builder(
              controller: _controller,
              itemBuilder: _buildCourseList,
            ),
          ),
        if (widget.courses.length > 1)
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
            child: Center(
              child: DotsIndicator(
                color: Colors.grey[600]!.withOpacity(0.8),
                controller: _controller,
                itemCount: widget.courses.length,
                onPageSelected: (int page) {
                  _controller.animateToPage(
                    page % widget.courses.length,
                    duration: _kDuration,
                    curve: _kCurve,
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}
