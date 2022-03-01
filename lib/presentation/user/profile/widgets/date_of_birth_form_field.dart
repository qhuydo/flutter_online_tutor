import 'package:intl/intl.dart';

import '../../../common.dart';

class DateOfBirthFormField extends StatefulWidget {
  const DateOfBirthFormField({Key? key}) : super(key: key);

  @override
  State<DateOfBirthFormField> createState() => _DateOfBirthFormFieldState();
}

class _DateOfBirthFormFieldState extends State<DateOfBirthFormField> {
  final dateController = TextEditingController();

  @override
  void initState() {
    dateController.text = '1970-01-01';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: dateController,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        icon: const Icon(Icons.calendar_today),
        labelText:
        AppLocalizations.of(context)!.dateOfBirthTextBoxLabel,
        hintText: AppLocalizations.of(context)!.dateOfBirthTextBoxHint,
      ),
      readOnly: true,
      onTap: () async {
        final pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1800),
          lastDate: DateTime.now(),
        );

        if (pickedDate != null) {
          String formattedDate =
          DateFormat('yyyy-MM-dd').format(pickedDate);

          setState(() {
            dateController.text = formattedDate;
          });
        }
      },
    );
  }
}
