import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../../common.dart';

class TestPreparation {
  final int id;
  final String name;

  TestPreparation({
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
  static final List<TestPreparation> _testPreparations = [
    TestPreparation(id: 1, name: 'STARTERS'),
    TestPreparation(id: 2, name: 'MOVERS'),
    TestPreparation(id: 3, name: 'FLYERS'),
    TestPreparation(id: 4, name: 'KET'),
    TestPreparation(id: 5, name: 'PET'),
    TestPreparation(id: 6, name: 'IELTS'),
    TestPreparation(id: 7, name: 'TOEFL'),
    TestPreparation(id: 8, name: 'TOEIC'),
  ];

  final _items = _testPreparations
      .map((testPreparation) => MultiSelectItem<TestPreparation>(
          testPreparation, testPreparation.name))
      .toList();

  List<TestPreparation>? _selectedTestPreparations;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MultiSelectBottomSheetField<TestPreparation?>(
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
              _selectedTestPreparations = values.cast<TestPreparation>();
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
                  style: const TextStyle(color: Colors.black54),
                ))
            : Container(),
      ],
    );
  }
}
