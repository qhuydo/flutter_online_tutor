import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/user/profile/profile_bloc.dart';
import '../../../../domain/authentication/failures/value_failure.dart';
import '../../../common.dart';
import 'country_form_dropdown.dart';
import 'date_of_birth_form_field.dart';
import 'learning_topics_dropdown.dart';
import 'level_form_dropdown.dart';
import 'name_form_text_field.dart';
import 'phone_form_text_field.dart';
import 'save_button.dart';
import 'test_preparation_dropdown.dart';

class EditProfileForm extends StatefulWidget {
  const EditProfileForm({Key? key}) : super(key: key);

  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  final _formKey = GlobalKey<FormState>();

  static const rowSpacing = 20.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return Form(
            autovalidateMode: state.showError
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            key: _formKey,
            child: Column(
              children: [
                NameFormTextField(
                  initialValue: state.name.valueOrNull() ?? '',
                  enabled: !state.isLoading,
                  onChanged: (value) {
                    if (value != null) {
                      context.read<ProfileBloc>().add(
                            ProfileEvent.nameChanged(value),
                          );
                    }
                  },
                  validator: (_) => context
                      .watch<ProfileBloc>()
                      .state
                      .name
                      .value
                      .fold((l) => l.toErrorText(context), (r) => null),
                ),
                const SizedBox(height: rowSpacing),
                DateOfBirthFormField(
                  initialDate: state.birthDay?.valueOrNull(),
                  enabled: !state.isLoading,
                  onChanged: (value) {
                    if (value != null) {
                      context.read<ProfileBloc>().add(
                            ProfileEvent.birthDayChanged(value),
                          );
                    }
                  },
                  validator: (_) =>
                      state.birthDay?.value
                          .fold((l) => l.toErrorText(context), (r) => null) ??
                      const ValueFailure.valueIsRequired().toErrorText(context),
                ),
                const SizedBox(height: rowSpacing),
                PhoneFormTextField(
                  initialValue: state.user.phoneNumber?.valueOrNull() ?? '',
                ),
                const SizedBox(height: rowSpacing),
                CountryFormDropdown(
                  value: state.country,
                  onChanged: (value) {
                    if (value != null) {
                      context.read<ProfileBloc>().add(
                            ProfileEvent.countryChanged(value),
                          );
                    }
                  },
                ),
                const SizedBox(height: rowSpacing),
                LevelFormDropdown(
                  initialValue: state.level,
                  enabled: !state.isLoading,
                  onChanged: (value) {
                    if (value != null) {
                      context.read<ProfileBloc>().add(
                            ProfileEvent.levelChanged(value),
                          );
                    }
                  },
                ),
                const SizedBox(height: rowSpacing),
                LearningTopicsDropdown(
                  allTopics: state.allLearnTopics,
                  selectedLearnTopics: state.learnTopics,
                  onItemsSelected: (topics) {
                    context.read<ProfileBloc>().add(
                          ProfileEvent.learnTopicsChanged(topics.cast()),
                        );
                  },
                  onItemRemoved: (item) {
                    if (item != null) {
                      context.read<ProfileBloc>().add(
                            ProfileEvent.learnTopicsChanged(
                                state.learnTopics.toList()..remove(item)),
                          );
                    }
                  },
                ),
                const SizedBox(height: rowSpacing),
                TestPreparationDropdown(
                  allTopics: state.allTestPreparations,
                  selectedTestPreparations: state.testPreparations,
                  onItemsSelected: (topics) {
                    context.read<ProfileBloc>().add(
                      ProfileEvent.testPreparationTopicsChanged(topics.cast()),
                    );
                  },
                  onItemRemoved: (item) {
                    if (item != null) {
                      context.read<ProfileBloc>().add(
                        ProfileEvent.testPreparationTopicsChanged(
                            state.testPreparations.toList()..remove(item)),
                      );
                    }
                  },
                ),
                const SizedBox(height: rowSpacing),
                SaveButton(
                  enabled: !state.isLoading,
                  onPressed: () {
                    context.read<ProfileBloc>().add(
                      const ProfileEvent.updateButtonPressed(),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

extension ValueFailureX on ValueFailure {
  // TODO add translation
  String toErrorText(BuildContext context) {
    return when(
      () => 'Unknown error',
      valueIsRequired: () => 'Value is required',
      emptyValue: () => 'Empty value is not allowed',
      invalidValue: () => 'Value is invalid',
    );
  }
}
