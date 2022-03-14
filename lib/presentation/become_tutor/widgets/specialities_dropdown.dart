import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../common.dart';

// TODO add all specialities & add translations
enum Speciality {
  englishForKids,
  englishForBusiness,
  conversational,
}

extension SpecialityX on Speciality {
  String toTitle(BuildContext context) {
    switch (this) {
      case Speciality.englishForKids:
        return 'English for kids';
      case Speciality.englishForBusiness:
        return 'English for business';
      case Speciality.conversational:
        return 'Conversational';
    }
  }
}

class SpecialitiesDropdown extends StatefulWidget {
  const SpecialitiesDropdown({Key? key}) : super(key: key);

  @override
  _SpecialitiesDropdownState createState() => _SpecialitiesDropdownState();
}

class _SpecialitiesDropdownState extends State<SpecialitiesDropdown> {

  List<Speciality>? _selectedSpecialities;

  @override
  Widget build(BuildContext context) {
    final _items = Speciality.values
        .map((speciality) => MultiSelectItem<Speciality>(
              speciality,
              speciality.toTitle(context),
            ))
        .toList();

    return Column(
      children: [
        MultiSelectBottomSheetField<Speciality?>(
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          initialChildSize: 0.5,
          listType: MultiSelectListType.CHIP,
          searchable: true,
          buttonText: Text(
            context.l10n.specialitiesDropdown,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          title: Text(
            context.l10n.specialitiesDropdown,
          ),
          items: _items,
          onConfirm: (values) {
            setState(() {
              _selectedSpecialities = values.cast<Speciality>();
            });
          },
          chipDisplay: MultiSelectChipDisplay(
            icon: const Icon(Icons.cancel),
            onTap: (value) {
              setState(() {
                _selectedSpecialities?.remove(value);
              });
            },
          ),
        ),
        _selectedSpecialities == null ||
                (_selectedSpecialities != null &&
                    _selectedSpecialities!.isEmpty)
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
