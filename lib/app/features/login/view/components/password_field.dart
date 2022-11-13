part of login_view;

class _PasswordField extends GetView<LoginController> {
  const _PasswordField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => TextFormField(
            
        keyboardType: TextInputType.visiblePassword,
        obscureText: controller.isObscure.value,
        controller: controller.passwordController,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: "Password",
          
          suffixIcon: IconButton(
              icon: Icon(controller.isObscure.value
                  ? Icons.visibility
                  : Icons.visibility_off),
              onPressed: () {
                controller.isObscure.value = !controller.isObscure.value;
              }),
        ),
        validator: (value) {
          if (value == null || value.trim() == "") return "Enter password";
          return null;
        },
      ),
    );
  }
}