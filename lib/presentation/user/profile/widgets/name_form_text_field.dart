import '../../../common.dart';

class NameFormTextField extends StatelessWidget {
  const NameFormTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration: InputDecoration(
        icon: const Icon(Icons.person_outlined),
        border: const OutlineInputBorder(),
        labelText: context.l10n.fullNameTextBox,
        hintText: context.l10n.fullNameTextBoxHint,
      ),
      initialValue: 'Nguyen Van A',
    );
  }
}
