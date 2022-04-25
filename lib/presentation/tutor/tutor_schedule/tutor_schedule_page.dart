import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/schedule/tutor_schedule/tutor_schedule_bloc.dart';
import '../../common.dart';
import '../../common/utils/default_app_bar.dart';
import 'widgets/tutor_schedule_body.dart';

class TutorSchedulePage extends StatelessWidget {
  final String tutorId;

  const TutorSchedulePage({
    Key? key,
    required this.tutorId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: context.l10n.bookButtonText,
      ),
      body: BlocProvider(
        create: (_) => getIt<TutorScheduleBloc>()
          ..add(TutorScheduleEvent.initialise(tutorId)),
        child: const TutorScheduleBody(),
      ),
    );
  }
}
