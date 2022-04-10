import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/tutor/tutor_details/tutor_details_bloc.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import 'tutor_details_content.dart';
import 'tutor_details_header.dart';
import 'tutor_recommended_course_list.dart';

class TutorDetailsPageBody extends StatelessWidget {
  final String tutorId;

  const TutorDetailsPageBody({
    Key? key,
    required this.tutorId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text(
              context.l10n.tutorDetailsPageTitle,
            ),
            elevation: 0.75,
            shadowColor: Colors.grey[500]?.withOpacity(0.5),
            centerTitle: true,
            floating: true,
            stretch: true,
          ),
          SliverToBoxAdapter(
            child: BlocBuilder<TutorDetailsBloc, TutorDetailsState>(
              buildWhen: (previous, current) =>
                  previous.isLoading != current.isLoading,
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(itemSpacing),
                      child: LinearProgressIndicator(),
                    ),
                  );
                }

                return SafeArea(
                  top: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SizedBox(height: smallItemSpacing),
                      TutorDetailsHeader(),
                      TutorDetailsContent(),
                      TutorRecommendedCourseList(),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
