part of docs_view;

class _PassportField extends GetView<DocsController> {
  const _PassportField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.passport == null
          ? controller.pickPassport()
          : controller.viewDocsHandler(fileType: 'pdf', file: controller.passport!),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        height: 50.h,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blueGrey.withOpacity(0.2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Passport'),
            GetBuilder<DocsController>(
                id: "passport_field",

                init: DocsController(),
                builder: (controller) => controller.passport != null
                    ? ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                      height: 40.h,
                      width: 35.w,
                      child: PdfDocumentLoader.openFile(controller.passport!.path, pageNumber: 1,)),
                )
                    : SizedBox.shrink())
          ],
        ),
      ),
    );
  }
}
