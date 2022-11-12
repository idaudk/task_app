part of docs_view;

class _ProfilePicField extends GetView<DocsController> {
  const _ProfilePicField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.profileImage == null
          ? Get.bottomSheet(
              Container(
                height: 130.h,
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Select Image:"),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton.icon(
                            onPressed: () => controller.pickImageFromCamera(),
                            icon: const Icon(Icons.camera),
                            label: const Text("Camera")),
                        TextButton.icon(
                            onPressed: () => controller.pickImageFromDevice(),
                            icon: const Icon(Icons.image),
                            label: const Text("Gallery"))
                      ],
                    ),
                  ],
                ),
              ),
            )
          : controller.viewDocsHandler(
              fileType: 'img', file: controller.profileImage!),
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
              'Profile Picture',
              style: TextStyle(fontSize: 16.r),
            ),
            GetBuilder<DocsController>(
                id: "img_field",
                init: DocsController(),
                builder: (controller) => controller.profileImage != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          height: 40.h,
                          width: 35.w,
                          child: Image.file(
                            controller.profileImage!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : SizedBox.shrink())
          ],
        ),
      ),
    );
  }
}
