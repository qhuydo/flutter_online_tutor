import '../../../common/utils/constants.dart';
import '../../../common.dart';

class CourseDetailsContent extends StatelessWidget {
  const CourseDetailsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subtitleTextStyle = Theme.of(context).textTheme.subtitle1?.copyWith(
          color: Theme.of(context).textTheme.caption?.color,
        );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: smallItemSpacing),
      child: ListView(
        padding: const EdgeInsets.all(0),
        primary: false,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
              // primaryColor: Theme.of(context).textTheme.titleLarge?.color,
            ),
            child: ExpansionTile(
              iconColor: Theme.of(context).textTheme.titleLarge?.color,
              tilePadding: const EdgeInsets.symmetric(
                horizontal: smallItemSpacing,
              ),
              initiallyExpanded: true,
              title: Text(
                AppLocalizations.of(context)!.overviewTitleText,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: smallItemSpacing),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //
                      Text(
                        AppLocalizations.of(context)!
                            .reasonToTakeCourseSubtitle,
                        style: subtitleTextStyle,
                      ),
                      Text(
                        AppLocalizations.of(context)!.mediumLoremIpsum,
                      ),
                      //
                      const SizedBox(height: smallItemSpacing),
                      Text(
                        AppLocalizations.of(context)!.canDoSubtitle,
                        style: subtitleTextStyle,
                      ),
                      Text(
                        AppLocalizations.of(context)!.loremIpsum,
                      ),
                      //
                      const SizedBox(height: smallItemSpacing),
                      Text(
                        AppLocalizations.of(context)!.experienceLevelTitle,
                        style: subtitleTextStyle,
                      ),
                      Text(
                        AppLocalizations.of(context)!.courseLevelAny,
                      ),
                      //
                      const SizedBox(height: smallItemSpacing),
                      Text(
                        AppLocalizations.of(context)!.courseLengthTitle,
                        style: subtitleTextStyle,
                      ),
                      const Text('10'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
