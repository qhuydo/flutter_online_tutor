import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/course_ebook/ebook_details/ebook_details_cubit.dart';
import '../../../../domain/course_ebook/models/ebook.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/default_app_bar.dart';
import '../../../common/utils/image_utils.dart';
import '../../../common/widgets/outlined_card.dart';
import 'ebook_details_content.dart';

class EbookDetailsBodyDesktop extends StatelessWidget {
  const EbookDetailsBodyDesktop({Key? key}) : super(key: key);

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
      body: BlocBuilder<EbookDetailsCubit, EbookDetailsState>(
        builder: (context, state) {
          if (state.isLoading) return _buildLoadingWidget(context);

          final ebook = state.ebook;

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
                    errorBuilder: getDefaultImageErrorBuilder,
                    loadingBuilder: getDefaultImageLoadingBuilder,
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
