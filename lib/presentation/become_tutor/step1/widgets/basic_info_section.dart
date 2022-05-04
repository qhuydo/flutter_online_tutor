import '../../../common.dart';
import '../../../common/utils/constants.dart';
import '../../../user/profile/widgets/country_form_dropdown.dart';
import '../../../user/profile/widgets/date_of_birth_form_field.dart';

class BasicInfoSection extends StatelessWidget {
  const BasicInfoSection({Key? key}) : super(key: key);
  static const _defaultSpacingSizedBox = SizedBox(height: itemSpacing);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // TODO add profile image
        // Basic info
        Text(context.l10n.basicInfoLabel, style: titleStyle),
        const Divider(),
        _defaultSpacingSizedBox,
        TextFormField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            icon: const Icon(Icons.badge_outlined),
            labelText: context.l10n.tutoringNameTextBoxLabel,
          ),
        ),
        _defaultSpacingSizedBox,
        const CountryFormDropdown(),
        _defaultSpacingSizedBox,
        const DateOfBirthFormField(),
      ],
    );
  }
}
