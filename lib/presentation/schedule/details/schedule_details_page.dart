import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/schedule/schedule_details/schedule_details_bloc.dart';
import '../../../domain/schedule/interfaces/i_schedule_repository.dart';
import '../../../domain/schedule/models/appointment.dart';
import '../../common.dart';
import '../../common/utils/default_app_bar.dart';
import 'widgets/schedule_details_card.dart';
import 'widgets/student_request_card.dart';

// TODO update translation
class ScheduleDetailsPage extends StatelessWidget {
  final Appointment appointment;

  const ScheduleDetailsPage({
    Key? key,
    required this.appointment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ScheduleDetailsBloc>(
      create: (_) => ScheduleDetailsBloc(
        getIt<ScheduleRepository>(),
        appointment,
      ),
      child: Scaffold(
        // TODO update translation
        appBar: buildAppBar(context, title: 'Schedule details'),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              ScheduleDetailsCard(),
              StudentRequestCard(),
            ],
          ),
        ),
      ),
    );
  }
}
