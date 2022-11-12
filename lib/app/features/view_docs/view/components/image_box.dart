part of view_docs_view;

class _ImageBox extends GetView<ViewDocsController> {
  const _ImageBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: ClipRRect(borderRadius: BorderRadius.circular(10), child: Image.file(controller.file!)) ,) ,);
  }
}

