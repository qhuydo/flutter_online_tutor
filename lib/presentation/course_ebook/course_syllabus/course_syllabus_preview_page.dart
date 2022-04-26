import 'dart:typed_data';

import 'package:pdfx/pdfx.dart';
import 'package:printing/printing.dart';

import '../../../application/common/platform/platform_delegate.dart';
import '../../../domain/course_ebook/models/course_topic.dart';
import '../../common.dart';
import '../../common/utils/default_app_bar.dart';

class CourseSyllabusPreviewPage extends StatelessWidget {
  final CourseTopic item;
  final Uint8List pdf;
  final int initialPage;

  const CourseSyllabusPreviewPage({
    Key? key,
    required this.item,
    required this.pdf,
    this.initialPage = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: item.name),
      body: Target().isLinux
          ? PdfPreview(
              build: (format) => pdf,
              allowPrinting: false,
              allowSharing: false,
              useActions: false,
            )
          : CourseSyllabusPdfViewer(pdf: pdf, initialPage: initialPage),
    );
  }
}

class CourseSyllabusPdfViewer extends StatefulWidget {
  final Uint8List pdf;
  final int initialPage;

  const CourseSyllabusPdfViewer({
    Key? key,
    required this.pdf,
    this.initialPage = 0,
  }) : super(key: key);

  @override
  State<CourseSyllabusPdfViewer> createState() =>
      _CourseSyllabusPdfViewerState();
}

class _CourseSyllabusPdfViewerState extends State<CourseSyllabusPdfViewer> {
  late PdfControllerPinch pdfPinchController;

  @override
  void initState() {
    super.initState();
    pdfPinchController = PdfControllerPinch(
      document: PdfDocument.openData(widget.pdf),
      initialPage: widget.initialPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return PdfViewPinch(
      controller: pdfPinchController,
    );
  }
}
