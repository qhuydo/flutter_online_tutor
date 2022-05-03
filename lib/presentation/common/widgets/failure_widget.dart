import 'package:flutter/material.dart';

import '../../../domain/common/failures/failure.dart';
import '../l10n/failure_display_texts.dart';
import '../utils/constants.dart';

class FailureWidget extends StatelessWidget {
  final Failure failure;

  const FailureWidget({
    Key? key,
    required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(itemSpacing),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline),
            const SizedBox(height: smallItemSpacing),
            Text(failure.toText(context)),
          ],
        ),
      ),
    );
  }
}
