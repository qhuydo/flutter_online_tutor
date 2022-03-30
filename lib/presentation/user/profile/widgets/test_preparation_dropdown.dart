import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../../../domain/user/models/speciality.dart';
import '../../../common.dart';

class TestPreparationDropdown extends StatelessWidget {
  final List<Speciality> allTopics;
  final void Function(List<Speciality?>) onItemsSelected;
  final List<Speciality> selectedTestPreparations;
  final void Function(Speciality?) onItemRemoved;
  final bool enabled;

  const TestPreparationDropdown({
    Key? key,
    required this.allTopics,
    required this.selectedTestPreparations,
    required this.onItemsSelected,
    required this.onItemRemoved,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _items = allTopics
        .map((topic) => MultiSelectItem<Speciality>(topic, topic.name))
        .toList();
    return Column(
      children: <Widget>[
        MultiSelectBottomSheetField<Speciality?>(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          initialChildSize: 0.4,
          listType: MultiSelectListType.CHIP,
          searchable: true,
          buttonText: Text(
            AppLocalizations.of(context)!.testPreparationDropdown,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          title: Text(
            AppLocalizations.of(context)!.testPreparationDropdown,
          ),
          items: _items,
          onConfirm: onItemsSelected,
          chipDisplay: MultiSelectChipDisplay(),
        ),
        selectedTestPreparations.isEmpty
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
