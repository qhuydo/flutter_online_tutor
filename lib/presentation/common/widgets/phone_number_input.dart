import '../../common.dart';

class PhoneNumberInput extends StatefulWidget {
  const PhoneNumberInput({Key? key}) : super(key: key);

  @override
  _PhoneNumberInputState createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: DropdownButtonFormField(
            items: <String>['VN'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) {},
            value: 'VN',
            decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(18),
                border: OutlineInputBorder()),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 2,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.phoneNumberLabel,
                hintText: AppLocalizations.of(context)!.phoneNumberTextBoxHint,
                // floatingLabelBehavior: FloatingLabelBehavior.auto,
                border: const OutlineInputBorder()),
          ),
        ),
      ],
    );
  }
}
