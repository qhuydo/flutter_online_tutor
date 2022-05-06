import '../../../domain/common/failures/failure.dart';
import '../../common.dart';
import '../l10n/failure_display_texts.dart';

Future showLoadingDialog(BuildContext context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => AlertDialog(
      title: Text(context.l10n.loadingLabel),
      content: const SizedBox(
        height: 50,
        child: Center(child: CircularProgressIndicator()),
      ),
    ),
  );
}

Future showErrorDialog(BuildContext context, Failure failure) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(context.l10n.errorOccurredLabel),
      content: Text(failure.toText(context)),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(context.l10n.okButton),
        ),
      ],
    ),
  );
}
