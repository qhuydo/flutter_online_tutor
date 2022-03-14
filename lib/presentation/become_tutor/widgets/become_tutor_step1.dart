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

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Basic info
          Text(
            context.l10n.basicInfoLabel,
            style: titleStyle,
          ),
          const Divider(),
          const SizedBox(height: itemSpacing),
          TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.badge_outlined),
              labelText: context.l10n.tutoringNameTextBoxLabel,
            ),
          ),
          const SizedBox(height: itemSpacing),
          const CountryFormDropdown(),
          const SizedBox(height: itemSpacing),
          const DateOfBirthFormField(),
          const SizedBox(height: itemSpacing),
          // CV
          Text(
            context.l10n.cvLabel,
            style: titleStyle,
          ),
          const Divider(),
          const SizedBox(height: itemSpacing),
          Text(context.l10n.cvInfoNotice),
          const SizedBox(height: itemSpacing),
          InfoContainer(
            child: Text(
              context.l10n.protectPrivacyNotice,
            ),
          ),
          const SizedBox(height: itemSpacing),
          TextFormField(
            minLines: 3,
            maxLines: 15,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.interests_outlined),
              labelText: context.l10n.interestTextBoxLabel,
              hintText: context.l10n.interestTextBoxHint,
            ),
          ),
          const SizedBox(height: itemSpacing),
          TextFormField(
            minLines: 3,
            maxLines: 15,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.history_edu_outlined),
              labelText: context.l10n.academicLevelTextBoxLabel,
              hintText: context.l10n.academicLevelTextBoxHint,
            ),
          ),
          const SizedBox(height: itemSpacing),
          TextFormField(
            minLines: 3,
            maxLines: 15,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              icon: const Icon(IconData(0)),
              labelText: context.l10n.experienceTextBoxLabel,
            ),
          ),
          const SizedBox(height: itemSpacing),
          TextFormField(
            minLines: 1,
            maxLines: 5,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.work_outline),
              labelText: context.l10n.professionTextBoxLabel,
            ),
          ),
          const SizedBox(height: itemSpacing),
          // Language
          Text(
            context.l10n.aboutLanguageTitle,
            style: titleStyle,
          ),
          const Divider(),
          const SizedBox(height: itemSpacing),
          // TODO replace & add language dropdown
          const CountryFormDropdown(),
          const SizedBox(height: itemSpacing),
          // Target students
          Text(
            context.l10n.targetStudentTextBoxLabel,
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
