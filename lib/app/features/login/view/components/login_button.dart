part of login_view;

class _LoginButton extends GetView<LoginController> {
  const _LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => ElevatedButton(
        style: context.theme.elevatedButtonTheme.style,
        onPressed: controller.isLoading.value
            ? null
            : () async {
          controller.newLoginHandler();
        },
        child: controller.isLoading.value
            ? SizedBox(
          width: 30,
          height: 30,
          child: CircularProgressIndicator(),
        )
            : Text("Login"),
      ),
    );
  }
}