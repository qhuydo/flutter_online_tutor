import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/tutor/recommended_tutors/recommended_tutors_bloc.dart';
import '../../common.dart';
import '../../common/routes/app_routes.gr.dart';
import '../../tutor/list/widgets/tutor_card.dart';

class RecommendedTutors extends StatelessWidget {
  const RecommendedTutors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Wrap(
            direction: Axis.horizontal,
            crossAxisAlignment: WrapCrossAlignment.start,
            runAlignment: WrapAlignment.spaceBetween,
            alignment: WrapAlignment.spaceBetween,
            children: [
              // Twemoji(emoji: '🌟'),
              Text(
                '🌟 ' + context.l10n.recommendedTutors,
                maxLines: 2,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      // decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.start,
              ),
              TextButton(
                onPressed: () {
                  context.navigateTo(const TutorRoute());
                },
                child: Wrap(
                  children: [
                    Text(
                      context.l10n.seeMoreButtonText,
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.arrow_forward_ios)
                  ],
                ),
              )
            ],
          ),
        ),
        BlocProvider<RecommendedTutorsBloc>(
          create: (context) => getIt<RecommendedTutorsBloc>()
            ..add(const RecommendedTutorsEvent.initialise()),
          child: const _RecommendedTutors(),
        ),
      ],
    );
  }
}

class _RecommendedTutors extends StatelessWidget {
  const _RecommendedTutors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedTutorsBloc, RecommendedTutorsState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const SizedBox(
            height: 50,
            child: Center(
              child: LinearProgressIndicator(),
            ),
          );
        }

        final tutors = state.tutorsOrFailure.fold((l) => null, (r) => r);
        if (tutors == null) {
          return const SizedBox(
            height: 50,
            child: Center(
              child: Text('Something went wrong'),
            ),
          );
        }
        // TODO add widget for empty list state

        return ListView.separated(
          controller: ScrollController(),
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 8);
          },
          itemBuilder: (BuildContext context, int index) {
            return TutorCard(
              tutor: tutors[index],
              isLoading: context
                  .watch<RecommendedTutorsBloc>()
                  .state
                  .loadingTutors
                  .contains(tutors[index].id),
              onFavouriteButtonPressed: () {
                context.read<RecommendedTutorsBloc>().add(
                      RecommendedTutorsEvent.toggleFavourite(tutors[index].id),
                    );
              },
            );
          },
          physics: const NeverScrollableScrollPhysics(),
          primary: false,
          shrinkWrap: true,
          itemCount: tutors.length,
        );
      },
    );
  }
}
