import '../../common/utils/constants.dart';
import '../../common.dart';
import 'widgets/ebook_details_content.dart';

class EbookDetailsPage extends StatelessWidget {
  final String ebookId;
  final String thumbnail;

  const EbookDetailsPage({
    Key? key,
    required this.ebookId,
    this.thumbnail = 'assets/images/course.png',
  }) : super(key: key);

  Widget _buildFlexibleSpaceBar(BuildContext context) {
    return FlexibleSpaceBar(
      stretchModes: const [
        StretchMode.zoomBackground,
        StretchMode.fadeTitle,
      ],
      background: Image.asset(
        thumbnail,
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
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(smallItemSpacing),
              child: EbookDetailsContent(),
            ),
          ),
        ],
      ),
    );
  }
}
