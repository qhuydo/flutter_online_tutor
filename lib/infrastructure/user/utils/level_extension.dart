import '../../../domain/user/constants/levels.dart';

extension LevelX on Level {
  String toEncodeString() {
    switch (this) {
      case Level.none:
        return '';

      case Level.beginner:
        return 'BEGINNER';

      case Level.higherBeginner:
        return 'HIGHER_BEGINNER';

      case Level.preIntermediate:
        return 'PRE_INTERMEDIATE';

      case Level.intermediate:
        return 'INTERMEDIATE';

      case Level.upperIntermediate:
        return 'UPPER_INTERMEDIATE';

      case Level.advanced:
        return 'ADVANCED';

      case Level.proficiency:
        return 'PROFICIENCY';
    }
  }
}

extension LevelFromStringX on String? {
  Level toLevel() {
    switch (this) {
      case 'BEGINNER':
        return Level.beginner;

      case 'HIGHER_BEGINNER':
        return Level.higherBeginner;

      case 'PRE_INTERMEDIATE':
        return Level.preIntermediate;

      case 'INTERMEDIATE':
        return Level.intermediate;

      case 'UPPER_INTERMEDIATE':
        return Level.upperIntermediate;

      case 'ADVANCED':
        return Level.advanced;

      case 'PROFICIENCY':
        return Level.proficiency;

      default:
        return Level.none;
    }
  }
}
