import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../../../domain/user/models/learn_topic.dart';
import '../../../common.dart';

class LearningTopicsDropdown extends StatelessWidget {
  final List<LearnTopic> allTopics;
  final void Function(List<LearnTopic?>) onItemsSelected;
  final List<LearnTopic> selectedLearnTopics;
  final void Function(LearnTopic?) onItemRemoved;
  final bool enabled;

  // final List<MultiSelectItem<LearnTopic>> _items;
  const LearningTopicsDropdown({
    Key? key,
    required this.allTopics,
    required this.selectedLearnTopics,
    required this.onItemsSelected,
    required this.onItemRemoved,
    this.enabled = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _items = allTopics
        .map((topic) => MultiSelectItem<LearnTopic>(topic, topic.name))
        .toList();

    return Column(
      children: <Widget>[
        IgnorePointer(
          ignoring: !enabled,
          child: MultiSelectBottomSheetField<LearnTopic?>(
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            initialChildSize: 0.4,
            listType: MultiSelectListType.CHIP,
            searchable: true,
            buttonText: Text(
              context.l10n.subjectDropdownLabel,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            title: Text(
              context.l10n.subjectDropdownLabel,
            ),
            items: _items,
            initialValue: selectedLearnTopics,
            onConfirm: onItemsSelected,
            chipDisplay: MultiSelectChipDisplay(
              // icon: const Icon(Icons.cancel_outlined),
              // onTap: onItemRemoved,
            ),
          ),
        ),
        selectedLearnTopics.isEmpty
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

