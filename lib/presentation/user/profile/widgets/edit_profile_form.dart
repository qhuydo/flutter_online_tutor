import '../../../common.dart';
import 'country_form_dropdown.dart';
import 'date_of_birth_form_field.dart';
import 'name_form_text_field.dart';
import 'phone_form_text_field.dart';
import 'save_button.dart';
import 'subject_dropdown.dart';
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
      child: Form(
        key: _formKey,
        child: Column(
          children: const [
            NameFormTextField(),
            SizedBox(height: rowSpacing),
            DateOfBirthFormField(),
            SizedBox(height: rowSpacing),
            PhoneFormTextField(),
            SizedBox(height: rowSpacing),
            CountryFormDropdown(),
            SizedBox(height: rowSpacing),
            SubjectDropdown(),
            SizedBox(height: rowSpacing),
            TestPreparationDropdown(),
            SizedBox(height: rowSpacing),
            SaveButton(),
          ],
        ),
      ),
    );
  }
}
