import '../../common.dart';
import '../../common/widgets/info_container.dart';
import '../../user/profile/widgets/country_form_dropdown.dart';
import '../../user/profile/widgets/date_of_birth_form_field.dart';
import 'specialities_dropdown.dart';
import 'target_student_radio_button_group.dart';

class BecomeTutorStep1 extends StatelessWidget {
  const BecomeTutorStep1({Key? key}) : super(key: key);
  static const itemSpacing = 16.0;

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final appLocalization = AppLocalizations.of(context)!;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Basic info
          Text(
            appLocalization.basicInfoLabel,
            style: titleStyle,
          ),
          const Divider(),
          const SizedBox(height: itemSpacing),
          TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.badge_outlined),
              labelText: appLocalization.tutoringNameTextBoxLabel,
            ),
          ),
          const SizedBox(height: itemSpacing),
          const CountryFormDropdown(),
          const SizedBox(height: itemSpacing),
          const DateOfBirthFormField(),
          const SizedBox(height: itemSpacing),
          // CV
          Text(
            appLocalization.cvLabel,
            style: titleStyle,
          ),
          const Divider(),
          const SizedBox(height: itemSpacing),
          Text(appLocalization.cvInfoNotice),
          const SizedBox(height: itemSpacing),
          InfoContainer(
            child: Text(
              AppLocalizations.of(context)!.protectPrivacyNotice,
            ),
          ),
          const SizedBox(height: itemSpacing),
          TextFormField(
            minLines: 3,
            maxLines: 15,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.interests_outlined),
              labelText: appLocalization.interestTextBoxLabel,
              hintText: appLocalization.interestTextBoxHint,
            ),
          ),
          const SizedBox(height: itemSpacing),
          TextFormField(
            minLines: 3,
            maxLines: 15,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.history_edu_outlined),
              labelText: appLocalization.academicLevelTextBoxLabel,
              hintText: appLocalization.academicLevelTextBoxHint,
            ),
          ),
          const SizedBox(height: itemSpacing),
          TextFormField(
            minLines: 3,
            maxLines: 15,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              icon: const Icon(IconData(0)),
              labelText: appLocalization.experienceTextBoxLabel,
            ),
          ),
          const SizedBox(height: itemSpacing),
          TextFormField(
            minLines: 1,
            maxLines: 5,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.work_outline),
              labelText: appLocalization.professionTextBoxLabel,
            ),
          ),
          const SizedBox(height: itemSpacing),
          // Language
          Text(
            appLocalization.aboutLanguageTitle,
            style: titleStyle,
          ),
          const Divider(),
          const SizedBox(height: itemSpacing),
          // TODO replace & add language dropdown
          const CountryFormDropdown(),
          const SizedBox(height: itemSpacing),
          // Target students
          Text(
            appLocalization.targetStudentTextBoxLabel,
            style: titleStyle,
          ),
          const Divider(),
          // const SizedBox(height: itemSpacing),
          const TargetStudentRadioButtonGroup(),
          // const SizedBox(height: itemSpacing),
          const SpecialitiesDropdown(),
        ],
      ),
    );
  }
}
