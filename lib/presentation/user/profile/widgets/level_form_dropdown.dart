import '../../../common.dart';

class LevelFormDropdown extends StatelessWidget {
  const LevelFormDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String?>(
      items: <String?>[
        null,
        'Beginner',
        'Higher beginner',
        'Pre-intermediate',
        'Intermediate',
        'Upper intermediate',
        'Advanced',
        'Proficiency',
      ].map<DropdownMenuItem<String?>>((String? value) {
        return value != null
            ? DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        )
            : DropdownMenuItem<String?>(
          child: Container(),
        );
      }).toList(),
      value: 'Beginner',
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.all(18),
        border: const OutlineInputBorder(),
        icon: const Icon(Icons.school_outlined),
        labelText: AppLocalizations.of(context)!.levelDropdownLabel,
      ),
      onChanged: (String? value) {},
    );
  }
}
