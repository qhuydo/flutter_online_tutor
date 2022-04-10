import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/tutor/tutor_details/tutor_details_bloc.dart';
import '../../../../domain/tutor/models/tutor.dart';
import '../../../common.dart';
import '../../../common/routes/app_routes.gr.dart';
import 'report_dialog.dart';

class TutorDetailsButtonGroup extends StatelessWidget {
  final bool showBookButton;

  const TutorDetailsButtonGroup({
    Key? key,
    this.showBookButton = true,
  }) : super(key: key);

  Widget buildButton(
    BuildContext context, {
    required String title,
    required IconData icon,
    VoidCallback? onPressed,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Wrap(
        direction: Axis.vertical,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Icon(icon),
          Text(title),
        ],
      ),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 0, color: Colors.transparent),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tutor = context
        .read<TutorDetailsBloc>()
        .state
        .tutorOrFailure
        .fold((l) => Tutor.empty(), (r) => r);
    final tutorId = tutor.id;

    return Column(
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Wrap(
            alignment: WrapAlignment.spaceEvenly,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            runSpacing: 8,
            children: [
              buildButton(
                context,
                title: context.l10n.favouriteButtonIconText,
                icon: context
                            .watch<TutorDetailsBloc>()
                            .state
                            .tutorOrFailure
                            .fold((l) => null, (r) => r)
                            ?.isFavourite ==
                        true
                    ? Icons.favorite
                    : Icons.favorite_border_outlined,
                onPressed: () {
                  context.read<TutorDetailsBloc>().add(
                        const TutorDetailsEvent.toggleFavourite(),
                      );
                },
              ),
              buildButton(
                context,
                title: context.l10n.chatButtonText,
                icon: Icons.message_outlined,
                onPressed: () {
                  context.router.push(MessageDetailsRoute(tutorId: tutorId));
                },
              ),
              buildButton(
                context,
                title: context.l10n.viewReviewButtonText,
                icon: Icons.star_outline,
                onPressed: () {
                  context.router.push(TutorReviewRoute(
                    tutorId: tutorId,
                    tutor: tutor,
                  ));
                },
              ),
              buildButton(
                context,
                title: context.l10n.reportIconButtonText,
                icon: Icons.report_gmailerrorred,
                onPressed: () {
                  ReportDialog.showReportDialog(context);
                },
              ),
            ],
          ),
        ),
        if (showBookButton) Container(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton.icon(
            onPressed: () {
              context.router.push(
                TutorScheduleRoute(tutorId: tutorId),
              );
            },
            icon: const Icon(Icons.calendar_today),
            label: Text(context.l10n.bookButtonText),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(600, 44),
            ),
          ),
        ),
      ],
    );
  }
}
