import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/schedule/schedule_details/schedule_details_bloc.dart';
import '../../common.dart';

// TODO update translation
void showCancelClassConfirmDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => AlertDialog(
      title: const Text('Cancel class?'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            context
                .read<ScheduleDetailsBloc>()
                .add(const ScheduleDetailsEvent.cancelClass());
          },
          child: const Text('Yes'),
        ),
      ],
    ),
  );
}