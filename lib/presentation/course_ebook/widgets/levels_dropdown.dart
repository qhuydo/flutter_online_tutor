import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../../domain/user/constants/levels.dart';
import '../../common.dart';
import '../../common/l10n/level_display_text.dart';

class LevelsDropdown extends StatelessWidget {
  final void Function(List<Level?>) onItemsSelected;
  final List<Level> selectedLevels;
  final void Function(Level?) onItemRemoved;
  final bool enabled;

  const LevelsDropdown({
    Key? key,
    required this.selectedLevels,
    required this.onItemsSelected,
    required this.onItemRemoved,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _items = Level.values
        .map(
          (level) =>
              MultiSelectItem<Level>(level, level.toDisplayString(context)),
        )
        .toList();

    return Column(
      children: <Widget>[
        IgnorePointer(
          ignoring: !enabled,
          child: MultiSelectDialogField<Level?>(
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            listType: MultiSelectListType.CHIP,
            searchable: true,
            buttonText: Text(
              context.l10n.levelDropdownLabel,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            title: Text(context.l10n.levelDropdownLabel),
            items: _items,
            initialValue: selectedLevels,
            onConfirm: onItemsSelected,
          ),
        ),
        selectedLevels.isEmpty
            ? Container(
                padding: const EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text(
                  context.l10n.noneSelectedOption,
                  style: Theme.of(context).textTheme.caption,
                ))
            : Container(),
      ],
    );
  }
}
