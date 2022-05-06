import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/tutor/report/report_tutor_cubit.dart';
import '../../../../domain/tutor/interfaces/i_tutor_repository.dart';
import '../../../common.dart';
import '../../../common/l10n/failure_display_texts.dart';
import '../../../common/utils/constants.dart';
import '../../../common/utils/dialog_utils.dart';
import '../../../common/utils/flushbar_utils.dart';

class ReportDialog extends StatelessWidget {
  const ReportDialog({Key? key}) : super(key: key);

  static void showReportDialog(BuildContext context, String tutorId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BlocProvider<ReportTutorCubit>(
          create: (_) => ReportTutorCubit(getIt<TutorRepository>(), tutorId),
          child: const ReportDialog(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReportTutorCubit, ReportTutorState>(
      listenWhen: (previous, current) {
        return previous.isLoading != current.isLoading ||
            previous.reportFailedOrSucceed != current.reportFailedOrSucceed;
      },
      listener: (context, state) {
        if (state.isLoading) {
          showLoadingDialog(context);
          return;
        }

        state.reportFailedOrSucceed?.fold(
          (failure) async {
            Navigator.of(context).pop();
            await showErrorDialog(context, failure);
          },
          (_) {
            Navigator.of(context)
              ..pop()
              ..pop();

            FlushBarUtils.createInformation(
              message: context.l10n.reported,
            ).show(context);
          },
        );
      },
      builder: (context, state) {
        return AlertDialog(
          title: Text(context.l10n.reportDialogTitle),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.reportDialogContent,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: itemSpacing),
              TextFormField(
                autovalidateMode: state.showError
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
                minLines: 5,
                maxLines: 15,
                initialValue: state.content.valueOrNull() ?? '',
                enabled: !state.isLoading,
                onChanged: (value) {
                  context.read<ReportTutorCubit>().contentChanged(value);
                },
                validator: (_) => context
                    .watch<ReportTutorCubit>()
                    .state
                    .content
                    .value
                    .fold((l) => l.toErrorText(context), (r) => null),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                context.l10n.cancelButtonLabel,
                textAlign: TextAlign.end,
              ),
            ),
            TextButton(
              onPressed: () {
                context.read<ReportTutorCubit>().submitted();
              },
              child: Text(
                context.l10n.saveButtonLabel,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        );
      },
    );
  }
}
