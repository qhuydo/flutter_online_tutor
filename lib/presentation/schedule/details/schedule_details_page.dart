import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/schedule/schedule_details/schedule_details_bloc.dart';
import '../../../domain/schedule/interfaces/i_schedule_repository.dart';
import '../../../domain/schedule/models/appointment.dart';
import '../../common.dart';
import '../../common/utils/constants.dart';
import '../../common/utils/default_app_bar.dart';
import '../../common/utils/dialog_utils.dart';
import '../../common/utils/flushbar_utils.dart';
import '../../tutor/details/widgets/video_preview.dart';
import 'widgets/schedule_details_card.dart';
import 'widgets/student_request_card.dart';

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
        appBar: buildAppBar(context, title: context.l10n.scheduleDetailsLabel),
        body: const SingleChildScrollView(
          child: SafeArea(child: ScheduleDetailsBody()),
        ),
      ),
    );
  }
}

class ScheduleDetailsBody extends StatelessWidget {
  const ScheduleDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ScheduleDetailsBloc, ScheduleDetailsState>(
          listenWhen: (previous, current) =>
              previous.classCancellationStatus !=
              current.classCancellationStatus,
          listener: (context, state) {
            state.classCancellationStatus.when(
              initial: () {},
              loading: () => showLoadingDialog(context),
              succeed: () async {
                Navigator.of(context)
                  ..pop()
                  ..pop();

                context.read<ScheduleDetailsBloc>().add(
                      const ScheduleDetailsEvent
                          .classCancellationMessageDisplayed(),
                    );

                FlushBarUtils.createInformation(
                  message: context.l10n.classCanceledLabel,
                ).show(context);
              },
              failed: (failure) async {
                Navigator.of(context).pop();
                await showErrorDialog(context, failure);
                context.read<ScheduleDetailsBloc>().add(
                      const ScheduleDetailsEvent
                          .classCancellationMessageDisplayed(),
                    );
              },
            );
          },
        ),
        BlocListener<ScheduleDetailsBloc, ScheduleDetailsState>(
          listenWhen: (previous, current) =>
              previous.editStudentRequestStatus !=
              current.editStudentRequestStatus,
          listener: (context, state) {
            state.editStudentRequestStatus.when(
              initial: () {},
              loading: () => showLoadingDialog(context),
              succeed: () async {
                Navigator.of(context).pop();

                FlushBarUtils.createInformation(
                  message: context.l10n.editedLabel,
                ).show(context);
              },
              failed: (failure) {
                Navigator.of(context).pop();
                showErrorDialog(context, failure);
              },
            );
          },
        ),
      ],
      child: Column(
        children: [
          const ScheduleDetailsCard(),
          const StudentRequestCard(),
          BlocBuilder<ScheduleDetailsBloc, ScheduleDetailsState>(
            builder: (_, state) {
              if (state.appointment.recordUrl == null) {
                return const SizedBox();
              }
              return ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 800),
                child: Padding(
                  padding: const EdgeInsets.all(itemSpacing),
                  child: VideoPreview(
                    videoUrl: state.appointment.recordUrl!,
                    id: 696969,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
