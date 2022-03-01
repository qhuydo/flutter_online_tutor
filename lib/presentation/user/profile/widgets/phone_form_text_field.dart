import '../../../common.dart';

class PhoneFormTextField extends StatelessWidget {
  const PhoneFormTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: const Icon(Icons.phone_outlined),
        border: const OutlineInputBorder(),
        labelText: AppLocalizations.of(context)!.phoneNumberLabel,
      ),
      initialValue: '+84 0123 012 012',
      readOnly: true,
      enabled: false,
    );
  }
}
