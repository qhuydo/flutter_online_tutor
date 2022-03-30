import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../../domain/common/constants/languages.dart';
import '../../../domain/tutor/models/language.dart';
import '../../common.dart';

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

    return Column(
      children: <Widget>[
        MultiSelectDialogField<Language>(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          listType: MultiSelectListType.LIST,
          searchable: true,
          buttonText: Text(
            AppLocalizations.of(context)!.languageLabel,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          title: Text(
            AppLocalizations.of(context)!.languageLabel,
          ),
          items: _items,
          onConfirm: onItemsSelected,
          chipDisplay: MultiSelectChipDisplay(),
        ),
        selectedLanguages.isEmpty
            ? Container(
                padding: const EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)!.noneSelectedOption,
                  style: Theme.of(context).textTheme.caption,
                ))
            : Container(),
      ],
    );
  }
}
