import '../../common.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: AppLocalizations.of(context)!.emailLabel,
          hintText: AppLocalizations.of(context)!.emailTextBoxHint,
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          border: const OutlineInputBorder()),
    );
  }
}
