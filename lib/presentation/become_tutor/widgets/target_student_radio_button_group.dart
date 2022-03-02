import '../../common.dart';

enum TargetStudent {
  beginner,
  intermediate,
  advanced,
}

extension TargetStudentX on TargetStudent {
  String toTitle(BuildContext context) {
    switch (this) {
      case TargetStudent.beginner:
        return AppLocalizations.of(context)!.targetStudentBeginnerValue;
      case TargetStudent.intermediate:
        return AppLocalizations.of(context)!.targetStudentIntermediateValue;
      case TargetStudent.advanced:
        return AppLocalizations.of(context)!.targetStudentAdvancedValue;
    }
  }
}

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
              title: Text(e.toTitle(context)),
            ),
          )
          .toList(),
    );
  }
}
