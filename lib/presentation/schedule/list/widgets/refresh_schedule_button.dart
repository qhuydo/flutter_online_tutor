import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../../common/utils/constants.dart';

class RefreshScheduleButton extends StatelessWidget {
  const RefreshScheduleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(itemSpacing),
        child: FloatingActionButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            context
                .read<UpcomingClassBloc>()
                .add(const UpcomingClassEvent.reload());
          },
        ),
      ),
    );
  }
}
