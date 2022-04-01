import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/tutor/tutor_details/tutor_details_bloc.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import 'widgets/widgets.dart';

class TutorDetailsPage extends StatelessWidget {
  final String tutorId;

  const TutorDetailsPage({
    Key? key,
    @PathParam('tutorId') required this.tutorId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text(
              AppLocalizations.of(context)!.tutorDetailsPageTitle,
            ),
            elevation: 0.75,
            shadowColor: Colors.grey[500]?.withOpacity(0.5),
            centerTitle: true,
            floating: true,
            stretch: true,
          ),
          SliverToBoxAdapter(
            child: BlocProvider(
                create: (context) => getIt<TutorDetailsBloc>()..add(
                  TutorDetailsEvent.initialise(tutorId),
                ),
                child: const _TutorDetailsPage()),
          ),
        ],
      ),
    );
  }
}

class _TutorDetailsPage extends StatelessWidget {
  const _TutorDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TutorDetailsBloc, TutorDetailsState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: Padding(
              padding: EdgeInsets.all(itemSpacing),
              child: LinearProgressIndicator(),
            ),
          );
        }

        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: smallItemSpacing),
            TutorDetailsHeader(),
            TutorDetailsContent(),
            TutorRecommendedCourseList(),
          ],
        );
      },
    );
  }
}
