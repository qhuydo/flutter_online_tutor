import '../../../common.dart';

class NameFormTextField extends StatelessWidget {
  final String initialValue;
  final ValueChanged? onChanged;
  final FormFieldValidator<String>? validator;
  final bool enabled;

  const NameFormTextField({
    Key? key,
    this.initialValue = '',
    this.onChanged,
    this.validator,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: const Icon(Icons.person_outlined),
        border: const OutlineInputBorder(),
        labelText: context.l10n.fullNameTextBox,
        hintText: context.l10n.fullNameTextBoxHint,
      ),
      validator: validator,
      initialValue: initialValue,
      onChanged: onChanged,
      enabled: enabled,
    );
  }
}
