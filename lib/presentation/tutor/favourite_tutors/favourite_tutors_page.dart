import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/tutor/favourite_tutors/favourite_tutors_cubit.dart';
import '../../../domain/tutor/models/tutor.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/utils/default_app_bar.dart';
import '../../common/widgets/empty_page.dart';
import '../../common/widgets/loading_widget.dart';
import '../list/widgets/tutor_list.dart';

class FavouriteTutorsPage extends StatelessWidget {
  const FavouriteTutorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.favouriteTutorsTitle,
      ),
      body: BlocProvider(
        create: (_) => getIt<FavouriteTutorsCubit>(),
        child: const FavouriteTutorsBody(),
      ),
    );
  }
}

class FavouriteTutorsBody extends StatelessWidget {
  const FavouriteTutorsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavouriteTutorsCubit, FavouriteTutorsState>(
      builder: (_, state) {
        if (state.isLoading) {
          return const LoadingWidget();
        }

        final list = state.tutorsOrFailure.fold((l) => <Tutor>[], (r) => r);
        return list.isNotEmpty
            ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: itemSpacing),
              child: TutorList(
                  list: list,
                  loadingTutors: state.loadingTutors,
                  onFavouriteButtonPressed: (index) {
                    context
                        .read<FavouriteTutorsCubit>()
                        .toggleFavourite(list[index].id);
                  },
                ),
            )
            : EmptyPage(text: context.l10n.emptyResult);
      },
    );
  }
}
