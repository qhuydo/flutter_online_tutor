import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../common.dart';
import 'widgets/schedule_details_body.dart';

// TODO update translation
class ScheduleDetailsDialog extends StatelessWidget {
  const ScheduleDetailsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpcomingClassBloc, UpcomingClassState>(
        builder: (_, state) {
      return const SingleChildScrollView(
        child: ScheduleDetailsBody(),
      );
    });
  }
}
