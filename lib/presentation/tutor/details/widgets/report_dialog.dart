import 'package:flutter/material.dart';

import '../../../common/utils/constants.dart';
import '../../../common.dart';

// TODO update translation
class ReportDialog extends StatelessWidget {
  const ReportDialog({Key? key}) : super(key: key);

  static void showReportDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Report'),
          content: const ReportDialog(),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Dismiss',
                textAlign: TextAlign.end,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Save',
                textAlign: TextAlign.end,
              ),
            ),

          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Help us understand what\'s happening',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: itemSpacing),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
          ),
          minLines: 5,
          maxLines: 15,
        ),
      ],
    );
  }
}
