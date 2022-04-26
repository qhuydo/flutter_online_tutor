import '../../../domain/course_ebook/models/sort_level_option.dart';
import '../../common.dart';
import '../../common/l10n/sort_level_option_display_text.dart';

class SortByLevelDropdown extends StatelessWidget {
  final SortLevelOption? value;
  final void Function(SortLevelOption?)? onChanged;

  const SortByLevelDropdown({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<SortLevelOption?>(
      items: [null, ...SortLevelOption.values]
          .map<DropdownMenuItem<SortLevelOption?>>((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(
            value != null ? value.toText(context) : '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        );
      }).toList(),
      value: value,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.all(18),
        border: const OutlineInputBorder(),
        icon: const Icon(Icons.sort),
        labelText: context.l10n.filterOptionSortBy,
      ),
      onChanged: onChanged,
    );
  }
}
