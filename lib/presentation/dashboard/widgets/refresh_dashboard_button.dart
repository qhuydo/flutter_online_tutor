import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/course_ebook/course_list/course_list_bloc.dart';
import '../../../application/message/list/message_list_bloc.dart';
import '../../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../../application/tutor/recommended_tutors/recommended_tutors_bloc.dart';
import '../../common/utils/constants.dart';

class RefreshDashboardButton extends StatelessWidget {
  const RefreshDashboardButton({Key? key}) : super(key: key);

  static void onRefreshed(BuildContext context) {
    context
      ..read<RecommendedTutorsBloc>().add(
        const RecommendedTutorsEvent.initialise(),
      )
      ..read<CourseListBloc>().add(
        const CourseListEvent.recommendedListRefreshed(),
      )
      ..read<UpcomingClassBloc>().add(const UpcomingClassEvent.reload())
      ..read<MessageListBloc>().add(const MessageListEvent.refreshed());
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