import '../../../domain/user/constants/target_student.dart';
import '../../common.dart';
import '../../common/l10n/target_student_display_text.dart';

class TargetStudentRadioButtonGroup extends StatefulWidget {
  const TargetStudentRadioButtonGroup({Key? key}) : super(key: key);

  @override
  State<TargetStudentRadioButtonGroup> createState() =>
      _TargetStudentRadioButtonGroupState();
}

class _TargetStudentRadioButtonGroupState
    extends State<TargetStudentRadioButtonGroup> {
  TargetStudent _currentValue = TargetStudent.beginner;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: TargetStudent.values
          .map(
            (e) => RadioListTile<TargetStudent>(
              onChanged: (value) {
                setState(() {
                  if (value != null) {
                    _currentValue = value;
                  }
                });
              },
              groupValue: _currentValue,
              value: e,
              title: Text(e.toText(context)),
            ),
          )
          .toList(),
    );
  }
}
