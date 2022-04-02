import 'dart:math';

import '../../../../domain/course_ebook/models/course.dart';
import '../../../common.dart';

class CourseCarouselCardContent extends StatelessWidget {
  final Course course;

  const CourseCarouselCardContent({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      // flex: 1,
      fit: FlexFit.tight,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.name,
              maxLines: 3,
              style: Theme
                  .of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),

            // Workaround case to render as many lines as space allows
            // before ellipsing.
            // https://stackoverflow.com/questions/49913022/flutter-how-to-crop-text-depending-on-available-space
            // https://github.com/flutter/flutter/issues/15465
            Flexible(
              child: LayoutBuilder(builder: (context, constraints) {
                final style = Theme
                    .of(context)
                    .textTheme
                    .bodyText2!;

                // use a text painter to calculate the height taking into account text scale factor.
                //could be moved to a extension method or similar
                final size = (TextPainter(
                  text: TextSpan(
                    text: AppLocalizations.of(context)!.loremIpsum,
                    style: style,
                  ),
                  maxLines: 1,
                  textScaleFactor: MediaQuery
                      .of(context)
                      .textScaleFactor,
                  textDirection: TextDirection.ltr,
                )
                  ..layout())
                    .size;

                //lets not return 0 max lines or less
                final maxLines = max(
                  1,
                  (constraints.biggest.height / size.height).floor(),
                );

                return Text(
                  course.description,
                  style: style,
                  overflow: TextOverflow.ellipsis,
                  maxLines: maxLines,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
