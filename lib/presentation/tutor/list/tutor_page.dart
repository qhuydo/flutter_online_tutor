import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../../application/tutor/search_tutors/search_tutors_bloc.dart';
import '../../../domain/common/failures/failure.dart';
import '../../common.dart';
import '../../common/widgets/empty_page.dart';
import '../../common/widgets/failure_widget.dart';
import '../../common/widgets/loading_widget.dart';
import '../../common/widgets/paginator.dart';
import '../../common/widgets/search_bar.dart';
import '../../common/widgets/search_item_row_placeholder.dart';
import 'widgets/specialities_filter_row.dart';
import 'widgets/tutor_filter_dialog.dart';
import 'widgets/tutor_list.dart';

class TutorPage extends StatefulWidget {
  const TutorPage({Key? key}) : super(key: key);

  @override
  State<TutorPage> createState() => TutorPageState();
}

class TutorPageState extends State<TutorPage> {
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

        return SafeArea(
          left: false,
          child: IgnorePointer(
            ignoring: state.isLoading,
            child: SearchBar(
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
            ),
          ),
        );
      },
    );
  }

  Widget buildBody(SearchTutorsState state, BuildContext context) {
    if (state.resultList == null) {
      return FailureWidget(
        failure: state.result.fold(
          (l) => l,
          (r) => const Failure.internalError(),
        ),
      );
    }

    final bloc = context.read<SearchTutorsBloc>();

    return FloatingSearchBarScrollNotifier(
      child: SingleChildScrollView(
        primary: false,
        child: Padding(
          padding: const EdgeInsets.only(
            top: searchBarHeight + 12,
            left: smallItemSpacing,
            right: smallItemSpacing,
            bottom: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              if (state.isLoading)
                const SizedBox(height: 400, child: LoadingWidget())
              else
                state.isInitial || state.resultList!.isNotEmpty
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TutorList(
                            list: state.resultList!,
                            loadingTutors: const {},
                            onFavouriteButtonPressed: (index) => bloc.add(
                              SearchTutorsEvent.toggleFavourite(
                                state.resultList![index].id,
                              ),
                            ),
                          ),
                          const SizedBox(height: itemSpacing),
                          Paginator(
                            totalPages: state.paginationList!.totalPages,
                            initialPage: state.currentPage - 1,
                            onPageChanged: (value) {
                              context.read<SearchTutorsBloc>().add(
                                  SearchTutorsEvent.pageChanged(value + 1));
                            },
                          )
                        ],
                      )
                    : SizedBox(
                        height: 400,
                        child: EmptyPage(text: context.l10n.emptyResult),
                      ),
            ],
          ),
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
