import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/schedule/schedule_details/schedule_details_bloc.dart';
import '../../common.dart';

void showCancelClassConfirmDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: Text(context.l10n.cancelClassDialogContent),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(context.l10n.no),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            context
                .read<ScheduleDetailsBloc>()
                .add(const ScheduleDetailsEvent.cancelClass());
          },
          child: Text(context.l10n.yes),
        ),
      ],
    ),
  );
}