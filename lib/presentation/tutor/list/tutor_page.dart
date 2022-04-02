import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../../application/tutor/search_tutors/search_tutors_bloc.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/widgets/empty_page.dart';
import '../../common/widgets/scaffold_with_search_bar.dart';
import '../../common/widgets/search_item_row_placeholder.dart';
import 'widgets/specialities_filter_row.dart';
import 'widgets/tutor_card.dart';
import 'widgets/tutor_filter_dialog.dart';

class TutorPage extends StatelessWidget {
  const TutorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchTutorsBloc>()
        ..add(
          const SearchTutorsEvent.initialise(),
        ),
      child: const _TutorPage(),
    );
  }
}

class _TutorPage extends StatefulWidget {
  const _TutorPage({Key? key}) : super(key: key);

  @override
  State<_TutorPage> createState() => _TutorPageState();
}

class _TutorPageState extends State<_TutorPage> {
  final controller = FloatingSearchBarController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchTutorsBloc, SearchTutorsState>(
      builder: (context, state) {
        final bloc = context.read<SearchTutorsBloc>();
        final actions = [
          FloatingSearchBarAction.searchToClear(),
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
                        child: const TutorFilterDialog(),
                      );
                    });
              },
            ),
          ),
        ];

        return ScaffoldWithSearchBar(
          builder: (context, _) =>
              SearchItemRowPlaceholder.buildExpandableBody(),
          hint: context.l10n.findTutorHint,
          actions: actions,
          controller: controller,
          title: Text(
            state.keyword.isNotEmpty
                ? state.keyword
                : context.l10n.findTutorHint,
          ),
          onSubmitted: (keyword) {
            bloc
              ..add(SearchTutorsEvent.keywordChanged(keyword))
              ..add(const SearchTutorsEvent.submitted());
            controller.close();
          },
          body: buildBody(state, context),
        );
      },
    );
  }

  Widget buildBody(SearchTutorsState state, BuildContext context) {

    final resultList = state.result.fold((l) => null, (r) => r);

    if (resultList == null) {
      return const SizedBox(
        height: 60,
        child: Center(
          child: Text('Error occurred'),
        ),
      );
    }

    final bloc = context.read<SearchTutorsBloc>();

    return SingleChildScrollView(
      primary: false,
      child: Padding(
        padding: const EdgeInsets.only(
          top: searchBarHeight + 12,
          left: smallItemSpacing,
          right: smallItemSpacing,
        ),
        child: Column(
          children: [
            SizedBox(
              child: SpecialitiesFilterRow(
                specialities: state.allSpecialities,
                selectedSpecialities: state.specialities,
                onSelectionChanged: (value) {
                  bloc
                    ..add(SearchTutorsEvent.specialitiesChanged(value))
                    ..add(const SearchTutorsEvent.submitted());
                },
              ),
              height: 40,
            ),
            state.isInitial || resultList.isNotEmpty
                ? FloatingSearchBarScrollNotifier(
                    child: AlignedGridView.extent(
                      maxCrossAxisExtent: 600,
                      crossAxisSpacing: smallItemSpacing,
                      mainAxisSpacing: smallItemSpacing,
                      primary: false,
                      shrinkWrap: true,
                      itemCount: resultList.length,
                      // separatorBuilder: (context, index) => const Divider(),
                      itemBuilder: (context, index) {
                        return TutorCard(
                          tutor: resultList[index],
                          onFavouriteButtonPressed: () => bloc.add(
                            SearchTutorsEvent.toggleFavourite(
                              resultList[index].id,
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : const SizedBox(
                    height: 400,
                    child: EmptyPage(
                      text: 'Empty result',
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
