import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../../common.dart';
import '../../common/utils/constants.dart';
import 'widgets/schedule_card.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        left: false,
        child: BlocProvider(
          create: (_) => getIt<UpcomingClassBloc>()
            ..add(const UpcomingClassEvent.initialise()),
          child: const _SchedulePage(),
        ),
      ),
    );
  }
}

class _SchedulePage extends StatelessWidget {
  const _SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpcomingClassBloc, UpcomingClassState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(itemSpacing),
              child: LinearProgressIndicator(),
            ),
          );
        }

        final upcomingClasses = state.upcomingClasses;
        if (upcomingClasses == null) return const SizedBox();

        return MasonryGridView.extent(
          controller: ScrollController(),
          shrinkWrap: true,
          padding: const EdgeInsets.all(smallItemSpacing),
          itemCount: upcomingClasses.length,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          maxCrossAxisExtent: 600,
          itemBuilder: (context, index) => ScheduleCard(
            appointment: upcomingClasses[index],
          ),
        );
      },
    );
  }
}
