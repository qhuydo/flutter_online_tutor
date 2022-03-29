import '../../../../domain/user/value_objects/birthday.dart';
import '../../../common.dart';

class DateOfBirthFormField extends StatefulWidget {
  final ValueChanged? onChanged;
  final FormFieldValidator<String>? validator;
  final DateTime? initialDate;
  final bool enabled;

  const DateOfBirthFormField({
    Key? key,
    this.onChanged,
    this.validator,
    this.initialDate,
    this.enabled = true,
  }) : super(key: key);

  @override
  State<DateOfBirthFormField> createState() => _DateOfBirthFormFieldState();
}

class _DateOfBirthFormFieldState extends State<DateOfBirthFormField> {
  final dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dateController.text = widget.initialDate != null
        ? BirthDay.formatDate(widget.initialDate!)
        : '';
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: dateController,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        icon: const Icon(Icons.calendar_today),
        labelText: AppLocalizations.of(context)!.dateOfBirthTextBoxLabel,
        hintText: AppLocalizations.of(context)!.dateOfBirthTextBoxHint,
      ),
      readOnly: true,
      enabled: widget.enabled,
      onChanged: widget.onChanged,
      validator: widget.validator,
      // initialValue: widget.initialDate != null
      //     ? BirthDay.formatDate(widget.initialDate!)
      //     : null,
      onTap: () async {
        final pickedDate = await showDatePicker(
          context: context,
          initialDate: widget.initialDate ?? DateTime.now(),
          firstDate: DateTime(1800),
          lastDate: DateTime.now(),
        );

        if (pickedDate != null) {
          String formattedDate = BirthDay.formatDate(pickedDate);
          dateController.text = formattedDate;
          widget.onChanged?.call(formattedDate);
        }
      },
    );
  }
}
