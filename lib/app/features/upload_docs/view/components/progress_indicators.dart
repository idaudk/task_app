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
                  ? AppBasicTheme().primaryColor
                  : AppBasicTheme().primarycolorTwo,
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
                  ? AppBasicTheme().primaryColor
                  : AppBasicTheme().primarycolorTwo,
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
                  ? AppBasicTheme().primaryColor
                  : AppBasicTheme().primarycolorTwo,
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
                  ? AppBasicTheme().primaryColor
                  : AppBasicTheme().primarycolorTwo,
            ),
          ),
        ),
      ],
    );
  }
}
