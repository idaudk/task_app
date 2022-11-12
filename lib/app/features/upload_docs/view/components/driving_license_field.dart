part of docs_view;

class _DrivingLicenseField extends GetView<DocsController> {
  const _DrivingLicenseField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.drivingLicense == null
          ? controller.pickDrivingLicense()
          : controller.viewDocsHandler(
              fileType: 'pdf', file: controller.drivingLicense!),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        height: 50.h,
        width: Get.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Driving License',
              style: TextStyle(fontSize: 16.r),
            ),
            GetBuilder<DocsController>(
                id: "license_field",
                init: DocsController(),
                builder: (controller) => controller.drivingLicense != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                            height: 40.h,
                            width: 35.w,
                            child: PdfDocumentLoader.openFile(
                              controller.drivingLicense!.path,
                              pageNumber: 1,
                            )),
                      )
                    : SizedBox.shrink())
          ],
        ),
      ),
    );
  }
}
