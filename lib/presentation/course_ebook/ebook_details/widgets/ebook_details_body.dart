import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/course_ebook/ebook_details/ebook_details_cubit.dart';
import '../../../../domain/course_ebook/models/ebook.dart';
import '../../../common.dart';
import '../../../common/utils/default_app_bar.dart';
import '../../../common/utils/image_utils.dart';
import 'ebook_details_content.dart';

class EbookDetailsBody extends StatelessWidget {
  const EbookDetailsBody({Key? key}) : super(key: key);

  Widget _buildFlexibleSpaceBar(BuildContext context, Ebook ebook) {
    return FlexibleSpaceBar(
      stretchModes: const [
        StretchMode.zoomBackground,
        StretchMode.fadeTitle,
      ],
      background: Image.network(
        ebook.imageUrl ?? '',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        errorBuilder: getDefaultImageErrorBuilder,
        loadingBuilder: getDefaultImageLoadingBuilder,
      ),
    );
  }

  Widget _buildLoadingWidget(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.ebookTabLabel,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(itemSpacing),
          child: LinearProgressIndicator(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<EbookDetailsCubit, EbookDetailsState>(
        builder: (context, state) {
          if (state.isLoading) return _buildLoadingWidget(context);

          final ebook = state.ebook;

          return CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                title: Text(context.l10n.ebookTabLabel),
                centerTitle: true,
                floating: true,
                stretch: true,
                expandedHeight: MediaQuery.of(context).size.width * 9 / 13,
                flexibleSpace: _buildFlexibleSpaceBar(context, ebook),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(smallItemSpacing),
                  child: EbookDetailsContent(ebook: ebook),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
