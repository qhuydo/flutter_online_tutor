import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/become_tutor/become_tutor_bloc.dart';
import '../../../../domain/authentication/failures/value_failure.dart';
import '../../../common.dart';
import '../../../common/l10n/failure_display_texts.dart';
import '../../../common/utils/constants.dart';
import '../../../user/profile/widgets/country_form_dropdown.dart';
import '../../../user/profile/widgets/date_of_birth_form_field.dart';
import 'profile_chooser.dart';

class BasicInfoSection extends StatelessWidget {
  const BasicInfoSection({Key? key}) : super(key: key);
  static const _defaultSpacingSizedBox = SizedBox(height: itemSpacing);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleStyle = theme.textTheme.titleLarge;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(context.l10n.basicInfoLabel, style: titleStyle),
        const Divider(),
        _defaultSpacingSizedBox,
        const ProfileChooser(),
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
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      icon: const Icon(Icons.badge_outlined),
                      labelText: context.l10n.tutoringNameTextBoxLabel,
                    ),
                    initialValue: state.name.valueOrNull(),
                    onChanged: (value) => context.read<BecomeTutorBloc>().add(
                          BecomeTutorEvent.nameChanged(value),
                        ),
                    validator: (_) => context
                        .watch<BecomeTutorBloc>()
                        .state
                        .name
                        .value
                        .fold((l) => l.toErrorText(context), (r) => null),
                  ),
                  _defaultSpacingSizedBox,
                  CountryFormDropdown(
                    value: state.country,
                    onChanged: (value) {
                      if (value != null) {
                        context.read<BecomeTutorBloc>().add(
                              BecomeTutorEvent.countryChanged(value),
                            );
                      }
                    },
                    errorText: state.showErrorAtStep1 && state.country == null
                        ? const ValueFailure.valueIsRequired()
                            .toErrorText(context)
                        : null,
                  ),
                  _defaultSpacingSizedBox,
                  DateOfBirthFormField(
                    initialDate: state.birthDay?.valueOrNull(),
                    enabled: !state.isLoading,
                    onChanged: (value) {
                      if (value != null) {
                        context.read<BecomeTutorBloc>().add(
                              BecomeTutorEvent.birthDayChanged(value),
                            );
                      }
                    },
                    validator: (_) {
                      if (state.birthDay == null) {
                        return const ValueFailure.valueIsRequired().toErrorText(
                          context,
                        );
                      }
                      return state.birthDay?.value
                          .fold((l) => l.toErrorText(context), (r) => null);
                    },
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
