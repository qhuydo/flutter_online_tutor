import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../../domain/common/constants/languages.dart';
import '../../../domain/tutor/models/language.dart';
import '../../common.dart';
import '../utils/constants.dart';

class LanguageMultiSelectBottomField extends StatelessWidget {
  final void Function(List<Language?>) onItemsSelected;
  final List<Language> selectedLanguages;
  final void Function(Language?) onItemRemoved;
  final bool enabled;

  const LanguageMultiSelectBottomField({
    Key? key,
    required this.selectedLanguages,
    required this.onItemsSelected,
    required this.onItemRemoved,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _items = languageMap.values
        .map(
          (language) => MultiSelectItem<Language>(
            language,
            '${language.name} (${language.native})',
          ),
        )
        .toList();

    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        MultiSelectDialogField<Language>(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(smallItemSpacing)),
          ),
          listType: MultiSelectListType.LIST,
          itemsTextStyle: textTheme.bodyText1,
          unselectedColor: textTheme.bodyText1!.color,
          checkColor: textTheme.bodyText1!.color,
          selectedColor: theme.primaryColor,
          selectedItemsTextStyle: textTheme.bodyText1,
          searchable: true,
          buttonText: Text(
            context.l10n.languageLabel,
            style: textTheme.titleMedium,
          ),
          title: Text(
            context.l10n.languageLabel,
          ),
          items: _items,
          onConfirm: onItemsSelected,
        ),
        selectedLanguages.isEmpty
            ? Container(
                padding: const EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text(
                  context.l10n.noneSelectedOption,
                  style: textTheme.caption,
                ))
            : Container(),
      ],
    );
  }
}
