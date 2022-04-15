import 'package:flutter/material.dart';

import 'constants.dart';

Widget getDefaultImageErrorBuilder(context, exception, stackTrace) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(smallItemSpacing),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // TODO update translation
          FittedBox(
            child: Text(
              '❌',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          FittedBox(
            child: Text(
              'Failed to load images',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget getDefaultImageLoadingBuilder(context, child, loadingProgress) {
  if (loadingProgress == null) {
    return child;
  }
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(smallItemSpacing),
      child: LinearProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null
            ? loadingProgress.cumulativeBytesLoaded /
                loadingProgress.expectedTotalBytes!
            : null,
      ),
    ),
  );
}
