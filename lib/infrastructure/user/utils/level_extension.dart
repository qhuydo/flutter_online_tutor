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

  int toEncodeNumber() {
    switch (this) {
      case Level.beginner:
        return 1;

      case Level.higherBeginner:
        return 2;

      case Level.preIntermediate:
        return 3;

      case Level.intermediate:
        return 4;

      case Level.upperIntermediate:
        return 5;

      case Level.advanced:
        return 6;

      case Level.proficiency:
        return 7;

      default:
        return 0;
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

  Level toLevelFromLevelOrder() {
    switch (this) {
      case '1':
        return Level.beginner;

      case '2':
        return Level.higherBeginner;

      case '3':
        return Level.preIntermediate;

      case '4':
        return Level.intermediate;

      case '5':
        return Level.upperIntermediate;

      case '6':
        return Level.advanced;

      case '7':
        return Level.proficiency;

      default:
        return Level.none;
    }
  }

  Level toLevelFromTargetStudent() {
    switch (this) {
      case 'Intermediate':
        return Level.beginner;

      case 'Advanced':
        return Level.advanced;

      default:
        return Level.beginner;
    }
  }
}
