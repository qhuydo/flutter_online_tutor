
import '../../../common.dart';

TextStyle? getTitleTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.titleLarge?.copyWith(
    fontWeight: FontWeight.bold,
  );
}

TextStyle? getSubTitleTextStyle(BuildContext context) {
  return Theme.of(context).textTheme.subtitle1?.copyWith(
    color: Theme.of(context).textTheme.caption?.color,
  );
}