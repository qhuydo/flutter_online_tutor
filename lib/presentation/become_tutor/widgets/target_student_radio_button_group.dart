import '../../../domain/user/constants/target_student.dart';
import '../../common.dart';
import '../../common/l10n/target_student_display_text.dart';

class TargetStudentRadioButtonGroup extends StatelessWidget {
  final TargetStudent currentValue;
  final ValueChanged<TargetStudent?>? onChanged;

  const TargetStudentRadioButtonGroup({
    Key? key,
    required this.currentValue,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: TargetStudent.values
          .map(
            (e) => RadioListTile<TargetStudent>(
              onChanged: onChanged,
              groupValue: currentValue,
              value: e,
              title: Text(
                e.toText(context),
              ),
            ),
          )
          .toList(),
    );
  }
}
