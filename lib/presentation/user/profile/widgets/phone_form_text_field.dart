import '../../../common.dart';

class PhoneFormTextField extends StatelessWidget {
  final String initialValue;
  final ValueChanged? onChanged;
  final FormFieldValidator<String>? validator;
  final bool readOnly;
  final bool enabled;

  const PhoneFormTextField({Key? key,
    this.initialValue = '',
    this.onChanged,
    this.validator,
    this.readOnly = true,
    this.enabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: const Icon(Icons.phone_outlined),
        border: const OutlineInputBorder(),
        labelText: context.l10n.phoneNumberLabel,
      ),
      onChanged: onChanged,
      validator: validator,
      initialValue: initialValue,
      readOnly: readOnly,
      enabled: enabled,
    );
  }
}
