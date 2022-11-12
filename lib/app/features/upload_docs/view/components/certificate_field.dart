part of docs_view;

class _CertificateField extends GetView<DocsController> {
  const _CertificateField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.certificate == null
          ? controller.pickCertificate()
          : controller.viewDocsHandler(fileType: 'pdf', file: controller.certificate!),
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
            Text('Certificate'),
            GetBuilder<DocsController>(
              id: "certificate_field",
                init: DocsController(),
                builder: (controller) => controller.certificate != null
                    ? ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                      height: 40.h,
                      width: 35.w,
                      child: PdfDocumentLoader.openFile(controller.certificate!.path, pageNumber: 1,)),
                )
                    : SizedBox.shrink())
          ],
        ),
      ),
    );
  }
}
