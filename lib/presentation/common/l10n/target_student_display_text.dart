import '../../../domain/user/constants/target_student.dart';
import '../../common.dart';

extension TargetStudentX on TargetStudent {
  String toText(BuildContext context) {
    switch (this) {
      case TargetStudent.beginner:
        return context.l10n.targetStudentBeginnerValue;
      case TargetStudent.intermediate:
        return context.l10n.targetStudentIntermediateValue;
      case TargetStudent.advanced:
        return context.l10n.targetStudentAdvancedValue;
    }
  }
}