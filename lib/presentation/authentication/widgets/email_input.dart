import '../../common.dart';

class EmailInput extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final bool isEnabled;

  const EmailInput({
    Key? key,
    this.onChanged,
    this.validator,
    this.isEnabled = true,
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
      enabled: isEnabled,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
