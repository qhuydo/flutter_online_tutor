import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/become_tutor/become_tutor_bloc.dart';
import '../../../common.dart';
import '../../../common/l10n/failure_display_texts.dart';
import '../../../common/widgets/info_container.dart';

class CvSection extends StatelessWidget {
  const CvSection({Key? key}) : super(key: key);
  static const _defaultSpacingSizedBox = SizedBox(height: itemSpacing);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return BlocBuilder<BecomeTutorBloc, BecomeTutorState>(
      builder: (context, state) {
        // final watchedState = context.watch<BecomeTutorBloc>().state;
        return Form(
          autovalidateMode: state.showErrorAtStep1
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(context.l10n.cvLabel, style: titleStyle),
              const Divider(),
              _defaultSpacingSizedBox,
              Text(context.l10n.cvInfoNotice),
              _defaultSpacingSizedBox,
              InfoContainer(child: Text(context.l10n.protectPrivacyNotice)),
              _defaultSpacingSizedBox,
              TextFormField(
                minLines: 3,
                maxLines: 15,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  icon: const Icon(Icons.interests_outlined),
                  labelText: context.l10n.interestTextBoxLabel,
                  hintText: context.l10n.interestTextBoxHint,
                ),
                onChanged: (value) => context.read<BecomeTutorBloc>().add(
                      BecomeTutorEvent.interestsChanged(value),
                    ),
                validator: (_) => context
                    .watch<BecomeTutorBloc>()
                    .state
                    .interests
                    .value
                    .fold((l) => l.toErrorText(context), (r) => null),
              ),
              _defaultSpacingSizedBox,
              TextFormField(
                minLines: 3,
                maxLines: 15,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  icon: const Icon(Icons.history_edu_outlined),
                  labelText: context.l10n.academicLevelTextBoxLabel,
                  hintText: context.l10n.academicLevelTextBoxHint,
                ),
                onChanged: (value) => context.read<BecomeTutorBloc>().add(
                      BecomeTutorEvent.educationChanged(value),
                    ),
                validator: (_) =>
                    context.watch<BecomeTutorBloc>().state.education.value.fold(
                          (l) => l.toErrorText(context),
                          (r) => null,
                        ),
              ),
              _defaultSpacingSizedBox,
              TextFormField(
                minLines: 3,
                maxLines: 15,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  icon: const Icon(IconData(0)),
                  labelText: context.l10n.experienceTextBoxLabel,
                ),
                onChanged: (value) => context.read<BecomeTutorBloc>().add(
                      BecomeTutorEvent.experienceChanged(value),
                    ),
                validator: (_) => context
                    .watch<BecomeTutorBloc>()
                    .state
                    .experience
                    .value
                    .fold(
                      (l) => l.toErrorText(context),
                      (r) => null,
                    ),
              ),
              _defaultSpacingSizedBox,
              TextFormField(
                minLines: 1,
                maxLines: 5,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  icon: const Icon(Icons.work_outline),
                  labelText: context.l10n.professionTextBoxLabel,
                ),
                onChanged: (value) => context.read<BecomeTutorBloc>().add(
                      BecomeTutorEvent.professionChanged(value),
                    ),
                validator: (_) => context
                    .watch<BecomeTutorBloc>()
                    .state
                    .profession
                    .value
                    .fold(
                      (l) => l.toErrorText(context),
                      (r) => null,
                    ),
              ),
            ],
          ),
        );
      },
    );
  }
}
