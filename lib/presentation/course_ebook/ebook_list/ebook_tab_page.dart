import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../../application/course_ebook/ebook_list/ebook_list_bloc.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/widgets/paginator.dart';
import '../../common/widgets/search_bar.dart';
import '../../common/widgets/search_item_row_placeholder.dart';
import 'widgets/ebook_card.dart';
import 'widgets/ebook_filter_dialog.dart';

class EbookTabPage extends StatefulWidget {
  const EbookTabPage({Key? key}) : super(key: key);

  @override
  State<EbookTabPage> createState() => _EbookTabPageState();
}

class _EbookTabPageState extends State<EbookTabPage> {
  final controller = FloatingSearchBarController();

  @override
  Widget build(BuildContext context) {
    final leadingActions = [
      FloatingSearchBarAction.back(),
    ];

    return BlocBuilder<EbookListBloc, EbookListState>(
      builder: (context, state) {
        final bloc = context.read<EbookListBloc>();

        final actions = [
          FloatingSearchBarAction.searchToClear(
            showIfClosed: true,
          ),
          FloatingSearchBarAction(
            showIfOpened: true,
            child: CircularButton(
              icon: Icon(
                Icons.filter_list,
                color: state.isFilterApplied
                    ? Theme.of(context).colorScheme.secondary
                    : null,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return BlocProvider.value(
                        value: bloc,
                        child: const EbookFilterDialog(),
                      );
                    });
              },
            ),
          ),
        ];

        return SearchBar(
          builder: (context, _) =>
              SearchItemRowPlaceholder.buildExpandableBody(),
          hint: context.l10n.findEbookHint,
          actions: actions,
          leadingActions: leadingActions,
          controller: controller,
          title: Text(
            state.keyword.isNotEmpty
                ? state.keyword
                : context.l10n.findTutorHint,
          ),
          onSubmitted: (keyword) {
            bloc
              ..add(EbookListEvent.keywordChanged(keyword))
              ..add(const EbookListEvent.submitted());
            controller.close();
          },
          body: buildBody(),
        );
      },
    );
  }

  Widget buildBody() {
    return BlocBuilder<EbookListBloc, EbookListState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(itemSpacing),
              child: LinearProgressIndicator(),
            ),
          );
        }

        final list = state.ebookList;
        if (list == null) return const SizedBox();

        return FloatingSearchBarScrollNotifier(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                MasonryGridView.extent(
                  primary: false,
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(
                    top: searchBarHeight + 12,
                    left: smallItemSpacing,
                    right: smallItemSpacing,
                  ),
                  itemCount: list.length,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  maxCrossAxisExtent: 360,
                  itemBuilder: (context, index) => EbookCard(
                    ebook: list[index],
                  ),
                ),
                const SizedBox(height: smallItemSpacing),
                Paginator.inputPageCountFrom1(
                  totalPages: state.paginationEbookList!.totalPages,
                  initialPage: state.currentPage,
                  onPageChanged: (pageCountFrom0) {
                    context
                        .read<EbookListBloc>()
                        .add(EbookListEvent.pageChanged(pageCountFrom0 + 1));
                    controller.show();
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
