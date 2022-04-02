import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/course_ebook/ebook_details/ebook_details_bloc.dart';
import '../../../domain/course_ebook/models/ebook.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/utils/default_app_bar.dart';
import 'widgets/ebook_details_content.dart';

class EbookDetailsPage extends StatelessWidget {
  final String ebookId;
  final String thumbnail;

  const EbookDetailsPage({
    Key? key,
    required this.ebookId,
    this.thumbnail = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EbookDetailsBloc>()
        ..add(
          EbookDetailsEvent.initialise(ebookId),
        ),
      child: const _EbookDetailsPage(),
    );
  }
}

class _EbookDetailsPage extends StatelessWidget {
  const _EbookDetailsPage({Key? key}) : super(key: key);

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
      ),
    );
  }

  Widget _buildNotFoundWidget(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.ebookTabLabel,
      ),
      body: const Center(
        child: Text('Not found'),
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
      body: BlocBuilder<EbookDetailsBloc, EbookDetailsState>(
        builder: (context, state) {
          if (state.isLoading) return _buildLoadingWidget(context);

          final ebook = state.ebook;
          if (ebook == null) return _buildNotFoundWidget(context);

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
