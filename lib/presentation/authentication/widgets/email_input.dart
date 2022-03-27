import '../../common.dart';

class EmailInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;

  const EmailInput({
    Key? key,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: context.l10n.emailLabel,
        hintText: context.l10n.emailTextBoxHint,
        border: const OutlineInputBorder(),
      ),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
