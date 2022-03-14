import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants.dart';
import '../../../become_tutor/widgets/specialities_dropdown.dart';
import '../../../user/profile/widgets/country_form_dropdown.dart';

// TODO Update translation
class TutorFilterDialog extends StatelessWidget {
  const TutorFilterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return AlertDialog(
      title: const Text('Filter'),
      content: SizedBox(
        width: deviceWidth <= 600 ? deviceWidth : 600,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SpecialitiesDropdown(),
            const SizedBox(height: itemSpacing),
            const CountryFormDropdown(),
            const SizedBox(height: itemSpacing),
            DropdownButtonFormField<String?>(
              items: <String?>['Name', 'Favourite', 'Rating']
                  .map<DropdownMenuItem<String?>>((String? value) {
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
              value: null,
              decoration: const InputDecoration(
                // contentPadding: EdgeInsets.all(18),
                border: OutlineInputBorder(),
                icon: Icon(Icons.sort),
                labelText: 'Sort by',
              ),
              onChanged: (String? value) {},
            )
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.router.pop();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
