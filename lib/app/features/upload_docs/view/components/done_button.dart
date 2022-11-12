part of docs_view;

class _DoneButton extends GetView<DocsController> {
  const _DoneButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary:

           controller.isButtonActive.value == false ? Colors.grey : AppBasicTheme().primarycolorTwo
        ),
        onPressed: controller.isButtonActive == false ? null : () => controller.gotoDashboard(),
        child: Text("Done"),
      ),
    );
  }
}