import 'dart:typed_data';

import 'package:printing/printing.dart';

import '../../../domain/course_ebook/models/course_topic.dart';
import '../../common.dart';
import '../../common/utils/default_app_bar.dart';

class CourseSyllabusPreviewPage extends StatelessWidget {
  final CourseTopic item;
  final Uint8List pdf;

  const CourseSyllabusPreviewPage({
    Key? key,
    required this.item,
    required this.pdf,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: item.name),
      body: PdfPreview(
        build: (format) => pdf,
        allowPrinting: false,
        allowSharing: false,
        useActions: false,
      ),
    );
  }
}
