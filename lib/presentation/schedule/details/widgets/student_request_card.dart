import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/schedule/upcoming_class/upcoming_class_bloc.dart';
import '../../../common/utils/constants.dart';
import '../../../common/widgets/outlined_card.dart';

class StudentRequestCard extends StatelessWidget {
  const StudentRequestCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpcomingClassBloc, UpcomingClassState>(
        builder: (_, state) {
      if (state.selectedAppointment == null) {
        return const SizedBox();
      }
      final textTheme = Theme.of(context).textTheme;
      final appointment = state.selectedAppointment!;

      return Padding(
        padding: const EdgeInsets.all(smallItemSpacing),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 800),
            child: OutlinedCard(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(itemSpacing),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Note',
                          style: textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Expanded(child: SizedBox()),
                        TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                          label: const Text('Edit note'),
                        ),
                      ],
                    ),
                    const SizedBox(height: smallItemSpacing),
                    Text(appointment.studentRequest)
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
