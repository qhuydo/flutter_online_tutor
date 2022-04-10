import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_tutor/domain/course_ebook/models/ebook.dart';
import 'package:flutter_online_tutor/presentation/course_ebook/ebook_details/widgets/ebook_details_content.dart';

import '../../../../application/course_ebook/ebook_details/ebook_details_bloc.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/default_app_bar.dart';
import '../../../common/widgets/outlined_card.dart';

class EbookDetailsBodyDesktop extends StatelessWidget {
  const EbookDetailsBodyDesktop({Key? key}) : super(key: key);

  Widget _buildNotFoundWidget(BuildContext context) {
    return Center(child: Text(context.l10n.pageNotFound));
  }

  Widget _buildLoadingWidget(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(itemSpacing),
        child: LinearProgressIndicator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: context.l10n.ebookTabLabel),
      body: BlocBuilder<EbookDetailsBloc, EbookDetailsState>(
        builder: (context, state) {
          if (state.isLoading) return _buildLoadingWidget(context);

          final ebook = state.ebook;
          if (ebook == null) return _buildNotFoundWidget(context);

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(child: buildEbookDesktopCard(ebook)),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(itemSpacing),
                  child: EbookDetailsContent(
                    ebook: ebook,
                    // showButton: false,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  SingleChildScrollView buildEbookDesktopCard(Ebook ebook) {
    return SingleChildScrollView(
      padding: const EdgeInsetsDirectional.only(
        start: itemSpacing,
        top: itemSpacing,
      ),
      child: Center(
        child: OutlinedCard(
          childInsideInkwell: false,
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(bottom: smallItemSpacing),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (ebook.imageUrl != null)
                  Image.network(
                    ebook.imageUrl!,
                    fit: BoxFit.fitHeight,
                  ),
                // OpenEbookButton(url: ebook.fileUrl),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
