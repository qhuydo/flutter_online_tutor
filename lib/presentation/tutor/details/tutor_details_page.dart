import 'package:auto_route/auto_route.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/tutor/tutor_details/tutor_details_bloc.dart';
import '../../common.dart';
import 'widgets/tutor_details_page_body.dart';
import 'widgets/tutor_details_page_body_desktop.dart';

class TutorDetailsPage extends StatelessWidget {
  final String tutorId;

  const TutorDetailsPage({
    Key? key,
    @PathParam('tutorId') required this.tutorId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final breakpoint = Breakpoint.fromMediaQuery(context);
    return BlocProvider(
      create: (context) => getIt<TutorDetailsBloc>()
        ..add(
          TutorDetailsEvent.initialise(tutorId),
        ),
      child:breakpoint.window >= WindowSize.medium
          ? TutorDetailsPageBodyDesktop(tutorId: tutorId)
          : TutorDetailsPageBody(tutorId: tutorId),
    );
  }
}
