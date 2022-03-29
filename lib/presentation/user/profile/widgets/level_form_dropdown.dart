import '../../../../domain/user/constants/levels.dart';
import '../../../common.dart';

class LevelFormDropdown extends StatelessWidget {
  final Level initialValue;
  final bool enabled;
  final ValueChanged<Level?>? onChanged;

  const LevelFormDropdown({
    Key? key,
    this.initialValue = Level.none,
    this.enabled = true,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Level>(
      items: Level.values.map<DropdownMenuItem<Level>>((value) {
        return DropdownMenuItem<Level>(
          value: value,
          child: Text(
            value.toDisplayString(context),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        );
      }).toList(),
      value: initialValue,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.all(18),
        border: const OutlineInputBorder(),
        icon: const Icon(Icons.school_outlined),
        labelText: AppLocalizations.of(context)!.levelDropdownLabel,
      ),
      onChanged: enabled ? onChanged : null,
    );
  }
}

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
