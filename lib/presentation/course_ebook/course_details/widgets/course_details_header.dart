import '../../../common/utils/constants.dart';
import '../../../common.dart';

class CourseDetailsHeader extends StatelessWidget {
  const CourseDetailsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: smallItemSpacing),
      child: Column(
        children: [
          Text(
            'Lorem ipsum si amet',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: smallItemSpacing),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: smallItemSpacing),
            child: Text(
              AppLocalizations.of(context)!.shortLoremIpsum,
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          // const SizedBox(height: itemSmallSpacing),
          // const Divider(),
        ],
      ),
    );
  }
}
