import 'package:url_launcher/url_launcher.dart';

import '../../../common.dart';
import '../../../common/utils/flushbar_utils.dart';

class OpenEbookButton extends StatelessWidget {
  final String url;

  const OpenEbookButton({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          FlushBarUtils.createError(
            message: context.l10n.unableToOpenBrowser,
          ).show(context);
        }
      },
      icon: const Icon(Icons.open_in_new),
      label: Text(context.l10n.openEbookButtonText),
    );
  }
}
