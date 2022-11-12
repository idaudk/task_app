part of docs_view;

class _DoneButton extends GetView<DocsController> {
  const _DoneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () => controller.isButtonActive.value == false
            ? null
            : controller.gotoDashboard(),
        child: Container(
          height: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: controller.isButtonActive.value == false
                  ? Colors.white.withOpacity(0.5)
                  : AppBasicTheme().primaryColor),
          alignment: Alignment.center,
          child: Text(
            'DONE',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13.r,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}


// ElevatedButton(
//         style: ElevatedButton.styleFrom(
//             onPrimary: Colors.white,
//             shadowColor: Colors.white,
//             onSurface: Colors.white,
//             surfaceTintColor: Colors.white,
//             primary: controller.isButtonActive.value == false
//                 ? Colors.red
//                 : AppBasicTheme().primaryColor),
//         onPressed: controller.isButtonActive == false
//             ? null
//             : () => controller.gotoDashboard(),
//         child: Text("Done"),
//       )