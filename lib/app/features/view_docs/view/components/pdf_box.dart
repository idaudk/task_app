part of view_docs_view;

class _PdfBox extends GetView<ViewDocsController> {
  const _PdfBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: ClipRRect(borderRadius: BorderRadius.circular(10), child: PdfViewer.openFile(controller.file!.path)) ,) ,);
  }
}

