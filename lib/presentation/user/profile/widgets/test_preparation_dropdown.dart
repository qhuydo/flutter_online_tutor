import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../../common.dart';

class TestPreparation2 {
  final int id;
  final String name;

  TestPreparation2({
    required this.id,
    required this.name,
  });
}

class TestPreparationDropdown extends StatefulWidget {
  const TestPreparationDropdown({Key? key}) : super(key: key);

  @override
  _TestPreparationDropdownState createState() =>
      _TestPreparationDropdownState();
}

class _TestPreparationDropdownState extends State<TestPreparationDropdown> {
  static final List<TestPreparation2> _testPreparations = [
    TestPreparation2(id: 1, name: 'STARTERS'),
    TestPreparation2(id: 2, name: 'MOVERS'),
    TestPreparation2(id: 3, name: 'FLYERS'),
    TestPreparation2(id: 4, name: 'KET'),
    TestPreparation2(id: 5, name: 'PET'),
    TestPreparation2(id: 6, name: 'IELTS'),
    TestPreparation2(id: 7, name: 'TOEFL'),
    TestPreparation2(id: 8, name: 'TOEIC'),
  ];

  final _items = _testPreparations
      .map((testPreparation) => MultiSelectItem<TestPreparation2>(
          testPreparation, testPreparation.name))
      .toList();

  List<TestPreparation2>? _selectedTestPreparations;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MultiSelectBottomSheetField<TestPreparation2?>(
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
          onConfirm: (values) {
            setState(() {
              _selectedTestPreparations = values.cast<TestPreparation2>();
            });
          },
          chipDisplay: MultiSelectChipDisplay(
            icon: const Icon(Icons.cancel),
            onTap: (value) {
              setState(() {
                _selectedTestPreparations?.remove(value);
              });
            },
          ),
        ),
        _selectedTestPreparations == null ||
                (_selectedTestPreparations != null &&
                    _selectedTestPreparations!.isEmpty)
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
