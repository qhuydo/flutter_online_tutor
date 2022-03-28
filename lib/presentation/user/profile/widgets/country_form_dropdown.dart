import 'package:flutter/cupertino.dart';
import 'package:twemoji/twemoji.dart';

import '../../../../domain/common/constants/countries.dart';
import '../../../../domain/common/models/country.dart';
import '../../../common.dart';
import '../../../common/utils/string_utils.dart';

class CountryFormDropdown extends StatelessWidget {
  final bool showLeadingIcon;
  final Country? value;
  final ValueChanged? onChanged;

  const CountryFormDropdown({
    Key? key,
    this.showLeadingIcon = true,
    this.value,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<Country>(
      isDense: false,
      isExpanded: true,
      items: countryMap.values.map<DropdownMenuItem<Country>>((Country value) {
        return DropdownMenuItem<Country>(
          value: value,
          child: FittedBox(
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Twemoji(
                  emoji: value.isoCode.toCountryFlagFromCountryCode(),
                  width: 32,
                  height: 32,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  value.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        );
      }).toList(),
      value: value,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.all(18),
        border: const OutlineInputBorder(),
        icon: showLeadingIcon ? const Icon(Icons.language) : null,
        labelText: AppLocalizations.of(context)!.countryDropdownLabel,
      ),
      onChanged: onChanged ?? (_) {},
    );
  }
}
