import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/tutor/search_tutors/search_tutors_bloc.dart';
import '../../../../domain/tutor/models/tutor_search_options.dart';
import '../../../become_tutor/widgets/specialities_dropdown.dart';
import '../../../common/utils/constants.dart';
import '../../../user/profile/widgets/country_form_dropdown.dart';

// TODO Update translation
class TutorFilterDialog extends StatelessWidget {
  const TutorFilterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchTutorsBloc, SearchTutorsState>(
      builder: (context, state) {
        final bloc = context.read<SearchTutorsBloc>();

        return AlertDialog(
          title: const Text('Filter'),
          content: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SpecialitiesDropdown(
                  allSpecialities: state.allSpecialities,
                  selectedSpecialities: state.specialities,
                  onItemRemoved: (_) {},
                  onItemsSelected: (value) {
                    bloc.add(
                      SearchTutorsEvent.specialitiesChanged(value.cast()),
                    );
                  },
                ),
                const SizedBox(height: itemSpacing),
                CountryFormDropdown(
                  value: state.country,
                  onChanged: (value) =>
                      bloc.add(SearchTutorsEvent.countryChanged(value)),
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
                  decoration: const InputDecoration(
                    // contentPadding: EdgeInsets.all(18),
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.sort),
                    // TODO add translation
                    labelText: 'Sort by',
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
                bloc.add(const SearchTutorsEvent.submitted());
                context.router.pop();
              },
              child: const Text('OK'),
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
        return 'Name';
      case TutorSortBy.favourite:
        return 'Favourite';
      case TutorSortBy.rating:
        return 'Rating';
    }
  }
}
