import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/authentication/authentication_bloc.dart';
import '../../../application/common/app/app_cubit.dart';
import '../../../application/course_ebook/course_list/course_list_bloc.dart';
import '../../../application/message/list/message_list_bloc.dart';
import '../../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../../application/tutor/recommended_tutors/recommended_tutors_bloc.dart';
import '../../../domain/common/app/colour_scheme.dart';
import '../../common/utils/constants.dart';

class RefreshDashboardButton extends StatelessWidget {
  const RefreshDashboardButton({Key? key}) : super(key: key);

  static void onRefreshed(BuildContext context) {
    context
      ..read<AuthenticationBloc>()
          .add(const AuthenticationEvent.authCheckRequested())
      ..read<RecommendedTutorsBloc>().add(
        const RecommendedTutorsEvent.initialise(),
      )
      ..read<CourseListBloc>().add(
        const CourseListEvent.recommendedListRefreshed(),
      )
      ..read<UpcomingClassBloc>().add(const UpcomingClassEvent.reload())
      ..read<MessageListBloc>().add(const MessageListEvent.refreshed());

    final appCubit = context.read<AppCubit>();
    final colourScheme = appCubit.state.colourScheme;
    if (colourScheme == ColourScheme.random) {
      appCubit
        ..changeColourScheme(ColourScheme.blue)
        ..changeColourScheme(ColourScheme.random);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(itemSpacing),
        child: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () => onRefreshed(context),
        ),
      ),
    );
  }
}
