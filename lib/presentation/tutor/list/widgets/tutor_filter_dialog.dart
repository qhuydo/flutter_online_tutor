import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/tutor/search_tutors/search_tutors_bloc.dart';
import '../../../../domain/tutor/models/tutor_search_options.dart';
import '../../../become_tutor/widgets/specialities_dropdown.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../user/profile/widgets/country_form_dropdown.dart';

class TutorFilterDialog extends StatelessWidget {
  const TutorFilterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchTutorsBloc, SearchTutorsState>(
      builder: (context, state) {
        final bloc = context.read<SearchTutorsBloc>();

        return AlertDialog(
          title: Text(context.l10n.filterDialogTitle),
          content: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SpecialitiesDropdown(
                  allSpecialities: state.allSpecialities,
                  selectedSpecialities: state.specialities,
                  onItemRemoved: (_) {},
                  onItemsSelected: (value) => bloc.add(
                    SearchTutorsEvent.specialitiesChanged(value.cast()),
                  ),
                ),
                const SizedBox(height: itemSpacing),
                CountryFormDropdown(
                  value: state.country,
                  onChanged: (value) => bloc.add(
                    SearchTutorsEvent.countryChanged(value),
                  ),
                ),
                const SizedBox(height: itemSpacing),
                DropdownButtonFormField<TutorSortBy>(
                  items: TutorSortBy.values
                      .map<DropdownMenuItem<TutorSortBy>>((TutorSortBy value) {
                    return DropdownMenuItem<TutorSortBy>(
                      value: value,
                      child: Text(
                        value.toText(context),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    );
                  }).toList(),
                  value: state.sortOption,
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.all(18),
                    border: const OutlineInputBorder(),
                    icon: const Icon(Icons.sort),
                    labelText: context.l10n.filterOptionSortBy,
                  ),
                  onChanged: (value) {
                    if (value != null) {
                      bloc.add(SearchTutorsEvent.sortOptionChanged(value));
                    }
                  },
                )
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                bloc.add(const SearchTutorsEvent.searchOptionCleared());
                context.router.pop();
              },
              child: Text(context.l10n.clearFilterButton),
            ),
            TextButton(
              onPressed: () {
                bloc.add(const SearchTutorsEvent.submitted());
                context.router.pop();
              },
              child: Text(context.l10n.okButton),
            ),
          ],
        );
      },
    );
  }
}

extension TutorSortByX on TutorSortBy {
  String toText(BuildContext context) {
    switch (this) {
      case TutorSortBy.defaultSort:
        return context.l10n.tutorSortByDefaultSort;
      case TutorSortBy.favourite:
        return context.l10n.tutorSortByFavourite;
      case TutorSortBy.rating:
        return context.l10n.tutorSortByRating;
    }
  }
}
