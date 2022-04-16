import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../../../../domain/course_ebook/models/course.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import '../../../common/utils/image_utils.dart';
import '../../../common/widgets/outlined_card.dart';
import '../../utils/constants.dart';
import 'course_carousel_card_content.dart';

class CourseListCard extends StatefulWidget {
  final Course course;

  const CourseListCard({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  State<CourseListCard> createState() => _CourseListCardState();
}

class _CourseListCardState extends State<CourseListCard> {
  static const hoveredScale = 1.125;
  static const unHoveredScale = 1.0;
  var _scale = unHoveredScale;

  @override
  Widget build(BuildContext context) {
    return OutlinedCard(
      childInsideInkwell: false,
      onTap: () => context.router.push(
        CourseDetailsRoute(courseId: widget.course.id, thumbnail: ''),
      ),
      onCardHovered: (isHovered) {
        if (isHovered) {
          _scale = hoveredScale;
        } else {
          _scale = unHoveredScale;
        }
        setState(() {});
      },
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: courseThumbnailRatio,
            child: ClipRect(
              child: AnimatedScale(
                scale: _scale,
                duration: const Duration(milliseconds: 200),
                child: Image.network(
                  widget.course.imageUrl,
                  fit: BoxFit.fitWidth,
                  height: double.infinity,
                  width: double.infinity,
                  errorBuilder: getDefaultImageErrorBuilder,
                  loadingBuilder: getDefaultImageLoadingBuilder,
                ),
              ),
            ),
          ),
          CourseCarouselCardContent(course: widget.course),
        ],
      ),
    );
  }
}
