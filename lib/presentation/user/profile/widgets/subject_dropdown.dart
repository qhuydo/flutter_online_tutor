import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../../common.dart';

class Subject {
  final int id;
  final String name;

  Subject({
    required this.id,
    required this.name,
  });
}

class SubjectDropdown extends StatefulWidget {
  const SubjectDropdown({Key? key}) : super(key: key);

  @override
  _SubjectDropdownState createState() => _SubjectDropdownState();
}

class _SubjectDropdownState extends State<SubjectDropdown> {
  static final List<Subject> _subjects = [
    Subject(id: 1, name: 'English for Kids'),
    Subject(id: 2, name: 'Business English'),
    Subject(id: 3, name: 'Conversational English'),
  ];

  final _items = _subjects
      .map((subject) => MultiSelectItem<Subject>(subject, subject.name))
      .toList();

  List<Subject>? _selectedSubjects;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MultiSelectBottomSheetField<Subject?>(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          initialChildSize: 0.4,
          listType: MultiSelectListType.CHIP,
          searchable: true,
          buttonText: Text(
            AppLocalizations.of(context)!.subjectDropdownLabel,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          title: Text(
            AppLocalizations.of(context)!.subjectDropdownLabel,
          ),
          items: _items,
          onConfirm: (values) {
            setState(() {
              _selectedSubjects = values.cast<Subject>();
            });
          },
          chipDisplay: MultiSelectChipDisplay(
            icon: const Icon(Icons.cancel),
            onTap: (value) {
              setState(() {
                _selectedSubjects?.remove(value);
              });
            },
          ),
        ),
        _selectedSubjects == null ||
                (_selectedSubjects != null && _selectedSubjects!.isEmpty)
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
