import '../../../domain/tutor/models/language.dart';
import '../../common.dart';
import '../../common/widgets/info_container.dart';
import '../../common/widgets/language_multi_select_bottom_field.dart';
import '../../user/profile/widgets/country_form_dropdown.dart';
import '../../user/profile/widgets/date_of_birth_form_field.dart';
import 'specialities_dropdown.dart';
import 'target_student_radio_button_group.dart';

class BecomeTutorStep1 extends StatelessWidget {
  const BecomeTutorStep1({Key? key}) : super(key: key);
  static const itemSpacing = 16.0;
  static const defaultSpacingSizedBox = SizedBox(height: itemSpacing);

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
          defaultSpacingSizedBox,
          TextFormField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.badge_outlined),
              labelText: context.l10n.tutoringNameTextBoxLabel,
            ),
          ),
          defaultSpacingSizedBox,
          const CountryFormDropdown(),
          defaultSpacingSizedBox,
          const DateOfBirthFormField(),
          defaultSpacingSizedBox,
          // CV
          Text(
            context.l10n.cvLabel,
            style: titleStyle,
          ),
          const Divider(),
          defaultSpacingSizedBox,
          Text(context.l10n.cvInfoNotice),
          defaultSpacingSizedBox,
          InfoContainer(
            child: Text(
              context.l10n.protectPrivacyNotice,
            ),
          ),
          defaultSpacingSizedBox,
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
          defaultSpacingSizedBox,
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
          defaultSpacingSizedBox,
          TextFormField(
            minLines: 3,
            maxLines: 15,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              icon: const Icon(IconData(0)),
              labelText: context.l10n.experienceTextBoxLabel,
            ),
          ),
          defaultSpacingSizedBox,
          TextFormField(
            minLines: 1,
            maxLines: 5,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              icon: const Icon(Icons.work_outline),
              labelText: context.l10n.professionTextBoxLabel,
            ),
          ),
          defaultSpacingSizedBox,
          // Language
          Text(
            context.l10n.aboutLanguageTitle,
            style: titleStyle,
          ),
          const Divider(),
          defaultSpacingSizedBox,
          // TODO replace & add language dropdown
          LanguageMultiSelectBottomField(
            selectedLanguages: [],
            onItemRemoved: (Language? language) {},
            onItemsSelected: (List<Language?> languages) {},
          ),
          defaultSpacingSizedBox,
          // Target students
          Text(
            context.l10n.targetStudentTextBoxLabel,
            style: titleStyle,
          ),
          const Divider(),
          // defaultSpacingSizedBox,
          const TargetStudentRadioButtonGroup(),
          // defaultSpacingSizedBox,
          const SpecialitiesDropdown(),
        ],
      ),
    );
  }
}
