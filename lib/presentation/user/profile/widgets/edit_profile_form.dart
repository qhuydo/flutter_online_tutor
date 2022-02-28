import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:twemoji/twemoji.dart';

import '../../../utils/string_utils.dart';
import 'subject_dropdown.dart';
import 'test_preparation_dropdown.dart';

class EditProfileForm extends StatefulWidget {
  const EditProfileForm({Key? key}) : super(key: key);

  @override
  State<EditProfileForm> createState() => _EditProfileFormState();
}

class _EditProfileFormState extends State<EditProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final dateController = TextEditingController();

  static const rowSpacing = 20.0;

  @override
  void initState() {
    dateController.text = '1970-01-01';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person_outlined),
                border: OutlineInputBorder(),
                labelText: 'Full Name',
                hintText: 'Enter your full name',
              ),
              initialValue: 'Nguyen Van A',
            ),
            // InputDatePickerFormField(
            //   firstDate: DateTime.parse('1800-01-01'),
            //   lastDate: DateTime.now(),
            //   // decoration: const InputDecoration(
            //   //     border: OutlineInputBorder(),
            //   //     labelText: 'Full Name',
            //   //     hintText: 'Enter your full name',),
            // ),
            const SizedBox(height: rowSpacing),
            TextField(
              controller: dateController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.calendar_today),
                labelText: "Date of birth",
              ),
              readOnly: true,
              onTap: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1800),
                  lastDate: DateTime.now(),
                );

                if (pickedDate != null) {
                  print(pickedDate);
                  String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);

                  setState(() {
                    dateController.text =
                        formattedDate; //set output date to TextField value.
                  });
                }
              },
            ),
            const SizedBox(height: rowSpacing),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.phone_outlined),
                border: OutlineInputBorder(),
                labelText: 'Phone number',
              ),
              initialValue: '+84 0123 012 012',
              readOnly: true,
              enabled: false,
            ),
            const SizedBox(height: rowSpacing),
            DropdownButtonFormField<String?>(
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
              decoration: const InputDecoration(
                // contentPadding: EdgeInsets.all(18),
                border: OutlineInputBorder(),
                icon: Icon(Icons.language),
                labelText: 'Country',
              ),
              onChanged: (String? value) {},
            ),
            const SizedBox(height: rowSpacing),
            DropdownButtonFormField<String?>(
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
              decoration: const InputDecoration(
                // contentPadding: EdgeInsets.all(18),
                border: OutlineInputBorder(),
                icon: Icon(Icons.school_outlined),
                labelText: 'Level',
              ),
              onChanged: (String? value) {},
            ),
            const SizedBox(height: rowSpacing),
            SubjectDropdown(),
            const SizedBox(height: rowSpacing),
            TestPreparationDropdown(),
            const SizedBox(height: rowSpacing),
            ElevatedButton.icon(
              icon: Icon(Icons.save_outlined),
              onPressed: () {},
              // child: const Text(
              //   'Save',
              // ),
              label: Text(
                'Save',
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(56),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
