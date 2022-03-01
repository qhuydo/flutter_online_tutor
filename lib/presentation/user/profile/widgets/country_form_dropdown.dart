import 'package:twemoji/twemoji.dart';

import '../../../common.dart';
import '../../../utils/string_utils.dart';

class CountryFormDropdown extends StatelessWidget {
  const CountryFormDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DropdownButtonFormField<String?>(
      items: <String?>[
        null,
        'VN',
        'GB',
        'UA',
        'GE',
        'EE',
        'LV',
        'LT',
      ].map<DropdownMenuItem<String?>>((String? value) {
        return value != null
            ? DropdownMenuItem<String>(
          value: value,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Twemoji(
                emoji: value.toCountryFlagFromCountryCode(),
                width: 32,
                height: 32,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                value,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        )
            : DropdownMenuItem<String?>(
          child: Container(),
        );
      }).toList(),
      value: null,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.all(18),
        border: const OutlineInputBorder(),
        icon: const Icon(Icons.language),
        labelText: AppLocalizations.of(context)!.countryDropdownLabel,
      ),
      onChanged: (String? value) {},
    );
  }
}
