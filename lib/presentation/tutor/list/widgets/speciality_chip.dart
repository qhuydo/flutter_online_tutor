import '../../../common.dart';

class SpecialityChip extends StatefulWidget {
  final String label;

  const SpecialityChip({
    Key? key,
    this.label = '',
  }) : super(key: key);

  @override
  State<SpecialityChip> createState() => _SpecialityChipState();
}

class _SpecialityChipState extends State<SpecialityChip> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: Theme.of(context).inputDecorationTheme.enabledBorder!.borderSide,
      ),
      label: Text(widget.label),
      onSelected: (value) {
        setState(() {
          _isSelected = value;
        });
      },
      selected: _isSelected,
    );
  }
}
