import '../../../common.dart';

class SpecialityChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final ValueChanged<bool>? onSelected;

  const SpecialityChip({
    Key? key,
    this.label = '',
    this.isSelected = false,
    this.onSelected,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return FilterChip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: Theme.of(context).inputDecorationTheme.enabledBorder!.borderSide,
      ),
      label: Text(label),
      onSelected: onSelected,
      selected: isSelected,
    );
  }
}