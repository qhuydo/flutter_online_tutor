import '../../../common.dart';

class SpecialityChip extends StatefulWidget {
  const SpecialityChip({Key? key}) : super(key: key);

  @override
  State<SpecialityChip> createState() => _SpecialityChipState();
}

class _SpecialityChipState extends State<SpecialityChip> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: const Text('IELTS'),
      onSelected: (value) {
        setState(() {
          _isSelected = value;
        });
      },
      selected: _isSelected,
    );
  }
}
