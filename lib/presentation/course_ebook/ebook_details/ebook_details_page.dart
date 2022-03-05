import '../../../utils/constants.dart';
import '../../common.dart';

class EbookDetailsPage extends StatelessWidget {
  final String ebookId;

  const EbookDetailsPage({
    Key? key,
    required this.ebookId,
  }) : super(key: key);

  Widget _buildFlexibleSpaceBar(BuildContext context) {
    return FlexibleSpaceBar(
      stretchModes: const [
        StretchMode.zoomBackground,
        StretchMode.fadeTitle,
      ],
      background: Image.asset(
        'assets/images/course.png',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text(
              AppLocalizations.of(context)!.ebookTabLabel,
            ),
            centerTitle: true,
            floating: true,
            stretch: true,
            expandedHeight: MediaQuery.of(context).size.width * 9 / 13,
            flexibleSpace: _buildFlexibleSpaceBar(context),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(smallItemSpacing),
              child: Column(
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
