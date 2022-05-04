import '../../../../domain/tutor/models/language.dart';
import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../common/widgets/language_multi_select_bottom_field.dart';
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
        LanguageMultiSelectBottomField(
          selectedLanguages: const [],
          onItemRemoved: (Language? language) {},
          onItemsSelected: (List<Language?> languages) {},
        ),
        _defaultSpacingSizedBox,
        // Target students
        Text(context.l10n.targetStudentTextBoxLabel, style: titleStyle),
        const Divider(),
        _defaultSpacingSizedBox,
        const TargetStudentRadioButtonGroup(),
        // defaultSpacingSizedBox,
        // TODO update SpecialitiesDropdown
        // const SpecialitiesDropdown(),
      ],
    );
  }
}
