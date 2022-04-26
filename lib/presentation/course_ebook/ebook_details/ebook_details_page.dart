import 'package:breakpoint/breakpoint.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/course_ebook/ebook_details/ebook_details_cubit.dart';
import '../../../domain/course_ebook/models/ebook.dart';
import '../../common.dart';
import 'widgets/ebook_details_body.dart';
import 'widgets/ebook_details_body_desktop.dart';

class EbookDetailsPage extends StatelessWidget {
  final Ebook ebook;

  const EbookDetailsPage({Key? key, required this.ebook}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final breakpoint = Breakpoint.fromMediaQuery(context);

    return BlocProvider(
      create: (context) => EbookDetailsCubit(ebook),
      child: breakpoint.window >= WindowSize.small
          ? const EbookDetailsBodyDesktop()
          : const EbookDetailsBody(),
    );
  }
}
