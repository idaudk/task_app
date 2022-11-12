part of docs_view;

class _ProgressIndicator extends GetView<DocsController> {
  const _ProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GetBuilder<DocsController>(
          id: "img_field",
          init: DocsController(),
          builder: (_) => Container(
            width: 50.w,
            height: 10.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: controller.profileImage == null
                  ? Colors.white.withOpacity(0.5)
                  : AppBasicTheme().primaryColor,
            ),
          ),
        ),
        GetBuilder<DocsController>(
          id: "license_field",
          init: DocsController(),
          builder: (_) => Container(
            width: 50.w,
            height: 10.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: controller.drivingLicense == null
                  ? Colors.white.withOpacity(0.5)
                  : AppBasicTheme().primaryColor,
            ),
          ),
        ),
        GetBuilder<DocsController>(
          id: "certificate_field",
          init: DocsController(),
          builder: (_) => Container(
            width: 50.w,
            height: 10.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: controller.certificate == null
                  ? Colors.white.withOpacity(0.5)
                  : AppBasicTheme().primaryColor,
            ),
          ),
        ),
        GetBuilder<DocsController>(
          id: "passport_field",
          init: DocsController(),
          builder: (_) => Container(
            width: 50.w,
            height: 10.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: controller.passport == null
                  ? Colors.white.withOpacity(0.5)
                  : AppBasicTheme().primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
