import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/become_tutor/become_tutor_bloc.dart';
import '../../../../domain/authentication/failures/value_failure.dart';
import '../../../../domain/tutor/models/language.dart';
import '../../../common.dart';
import '../../../common/l10n/failure_display_texts.dart';
import '../../../common/utils/constants.dart';
import '../../../common/widgets/language_multi_select_bottom_field.dart';
import '../../../common/widgets/specialities_dropdown.dart';
import '../../widgets/target_student_radio_button_group.dart';

class LanguageAndTargetStudentSection extends StatelessWidget {
  const LanguageAndTargetStudentSection({Key? key}) : super(key: key);
  static const _defaultSpacingSizedBox = SizedBox(height: itemSpacing);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          context.l10n.aboutLanguageTitle,
          style: titleStyle,
        ),
        const Divider(),
        _defaultSpacingSizedBox,
        BlocBuilder<BecomeTutorBloc, BecomeTutorState>(
          builder: (context, state) {
            return Form(
              autovalidateMode: state.showErrorAtStep1
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    minLines: 3,
                    maxLines: 15,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      icon: const Icon(Icons.face_outlined),
                      labelText: context.l10n.introductionTextBoxLabel,
                    ),
                    onChanged: (value) => context.read<BecomeTutorBloc>().add(
                      BecomeTutorEvent.bioChanged(value),
                    ),
                    validator: (_) => context
                        .watch<BecomeTutorBloc>()
                        .state
                        .bio
                        .value
                        .fold((l) => l.toErrorText(context), (r) => null),
                  ),
                  _defaultSpacingSizedBox,
                  LanguageMultiSelectBottomField(
                    selectedLanguages: state.languages,
                    onItemRemoved: (Language? language) {},
                    onItemsSelected: (List<Language?> languages) {
                      context.read<BecomeTutorBloc>().add(
                            BecomeTutorEvent.languagesChanged(languages.cast()),
                          );
                    },
                  ),
                  Visibility(
                    visible: state.showErrorAtStep1 && state.languages.isEmpty,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 12),
                      child: Text(
                        const ValueFailure.valueIsRequired().toErrorText(
                          context,
                        ),
                        style: Theme.of(context).textTheme.caption?.copyWith(
                              color: Theme.of(context).errorColor,
                            ),
                      ),
                    ),
                  ),
                  _defaultSpacingSizedBox,
                  // Target students
                  Text(
                    context.l10n.targetStudentTextBoxLabel,
                    style: titleStyle,
                  ),
                  const Divider(),
                  _defaultSpacingSizedBox,
                  TargetStudentRadioButtonGroup(
                    currentValue: state.targetStudent,
                    onChanged: (value) {
                      if (value != null) {
                        context.read<BecomeTutorBloc>().add(
                              BecomeTutorEvent.targetStudentChanged(value),
                            );
                      }
                    },
                  ),
                  _defaultSpacingSizedBox,
                  SpecialitiesDropdown(
                    allSpecialities: state.allSpecialities,
                    selectedSpecialities: state.specialities,
                    onItemRemoved: (_) {},
                    onItemsSelected: (value) {
                      context.read<BecomeTutorBloc>().add(
                            BecomeTutorEvent.specialitiesChanged(value.cast()),
                          );
                    },
                  ),
                  Visibility(
                    visible:
                        state.showErrorAtStep1 && state.specialities.isEmpty,
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 12),
                      child: Text(
                        const ValueFailure.valueIsRequired()
                            .toErrorText(context),
                        style: Theme.of(context).textTheme.caption?.copyWith(
                              color: Theme.of(context).errorColor,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
