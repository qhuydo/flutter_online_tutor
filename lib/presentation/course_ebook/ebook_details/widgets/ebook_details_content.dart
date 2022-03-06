import '../../../../utils/constants.dart';
import '../../../common.dart';

class EbookDetailsContent extends StatelessWidget {
  const EbookDetailsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.shortLoremIpsum,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: smallItemSpacing),
        Center(
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.open_in_new,
            ),
            label: Text(AppLocalizations.of(context)!.openEbookButtonText),
          ),
        ),
        const SizedBox(height: smallItemSpacing),
        Text(
          AppLocalizations.of(context)!.overviewTitleText,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: smallItemSpacing),
        Text(
          AppLocalizations.of(context)!.mediumLoremIpsum,
          style: Theme.of(context).textTheme.caption,
        ),
        const SizedBox(height: smallItemSpacing),
        Text(
          AppLocalizations.of(context)!.experienceLevelTitle,
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: Theme.of(context).textTheme.caption?.color,
          ),
        ),
        Text(
          AppLocalizations.of(context)!.courseLevelAny,
        ),
      ],
    );
  }
}
