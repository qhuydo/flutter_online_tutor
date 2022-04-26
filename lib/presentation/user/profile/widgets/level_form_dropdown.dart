import '../../../../domain/user/constants/levels.dart';
import '../../../common.dart';
import '../../../common/l10n/level_display_text.dart';

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
