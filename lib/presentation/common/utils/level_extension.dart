import '../../../domain/user/constants/levels.dart';
import '../../common.dart';

extension LevelX on Level {
  String toDisplayString(BuildContext context) {
    switch (this) {
      case Level.none:
        return context.l10n.courseLevelAny;
      case Level.beginner:
        return context.l10n.courseLevelBeginner;
      case Level.higherBeginner:
        return context.l10n.courseLevelUpperBeginner;
      case Level.preIntermediate:
        return context.l10n.courseLevelPreIntermediate;
      case Level.intermediate:
        return context.l10n.courseLevelIntermediate;
      case Level.upperIntermediate:
        return context.l10n.courseLevelUpperIntermediate;
      case Level.advanced:
        return context.l10n.courseLevelAdvanced;
      case Level.proficiency:
        return context.l10n.courseLevelVeryAdvanced;
    }
  }
}
