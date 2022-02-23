import 'dart:math';

import '../../common.dart';
import '../../tutor/widgets/topic_chip.dart';

class CourseCardContent extends StatelessWidget {
  const CourseCardContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
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
        Flexible(
          fit: FlexFit.tight,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Text(
                  // generateWordPairs().first.join(' '),
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),

                // Workaround case to render as many lines as space allows
                // before ellipsing.
                // https://stackoverflow.com/questions/49913022/flutter-how-to-crop-text-depending-on-available-space
                // https://github.com/flutter/flutter/issues/15465
                Flexible(
                  child: LayoutBuilder(builder: (context, constraints) {
                    final TextStyle style =
                        Theme.of(context).textTheme.bodyText2!;

                    // use a text painter to calculate the height taking into account text scale factor.
                    //could be moved to a extension method or similar
                    final Size size = (TextPainter(
                            text: TextSpan(
                                text: AppLocalizations.of(context)!.loremIpsum,
                                style: style),
                            maxLines: 1,
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            textDirection: TextDirection.ltr)
                          ..layout())
                        .size;

                    //lets not return 0 max lines or less
                    final maxLines = max(
                        1, (constraints.biggest.height / size.height).floor());

                    return Text(
                      AppLocalizations.of(context)!.loremIpsum,
                      style: style,
                      overflow: TextOverflow.ellipsis,
                      maxLines: maxLines,
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Row(
            children: const [
              TopicChip(),
            ],
          ),
        ),
      ],
    );
  }
}
