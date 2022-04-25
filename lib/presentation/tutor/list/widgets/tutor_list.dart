import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../domain/tutor/models/tutor.dart';
import '../../../common/utils/constants.dart';
import 'tutor_card.dart';

class TutorList extends StatelessWidget {
  final List<Tutor> list;
  final ValueChanged<int>? onFavouriteButtonPressed;
  final Set<String> loadingTutors;

  const TutorList({
    Key? key,
    required this.list,
    required this.loadingTutors,
    this.onFavouriteButtonPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.extent(
      padding: const EdgeInsets.symmetric(vertical: smallItemSpacing),
      maxCrossAxisExtent: 600,
      crossAxisSpacing: smallItemSpacing,
      mainAxisSpacing: smallItemSpacing,
      primary: false,
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return TutorCard(
          isLoading: loadingTutors.contains(list[index].id),
          tutor: list[index],
          onFavouriteButtonPressed: onFavouriteButtonPressed != null
              ? () => Function.apply(onFavouriteButtonPressed!, [index])
              : null,
        );
      },
    );
  }
}
