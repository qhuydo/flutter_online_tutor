import 'package:breakpoint/breakpoint.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/course_ebook/ebook_details/ebook_details_bloc.dart';
import '../../common.dart';
import 'widgets/ebook_details_body.dart';
import 'widgets/ebook_details_body_desktop.dart';

class EbookDetailsPage extends StatelessWidget {
  final String ebookId;
  final String thumbnail;

  const EbookDetailsPage({
    Key? key,
    required this.ebookId,
    this.thumbnail = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final breakpoint = Breakpoint.fromMediaQuery(context);

    return BlocProvider(
      create: (context) => getIt<EbookDetailsBloc>()
        ..add(
          EbookDetailsEvent.initialise(ebookId),
        ),
      child: breakpoint.window >= WindowSize.small
          ? const EbookDetailsBodyDesktop()
          : const EbookDetailsBody(),
    );
  }
}
