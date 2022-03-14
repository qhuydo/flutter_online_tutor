import '../../common.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: context.l10n.emailLabel,
          hintText: context.l10n.emailTextBoxHint,
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          border: const OutlineInputBorder()),
    );
  }
}
