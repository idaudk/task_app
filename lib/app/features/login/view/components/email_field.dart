part of login_view;

class _EmailAddressField extends GetView<LoginController> {
  const _EmailAddressField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      TextFormField(
        controller: controller.emailAddressController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if(value == null || value.isEmpty || !value.contains('@') || !value.contains('.')){
            return 'Invalid Email';
          }
          return null;
          // validateEmail(value);
          // if(EmailValidator.validate(value!)) return "";
          // return null;
          // EmailValidator.validate(value!) ? null : "Please enter a valid email";
          // if (value == null || value.trim() == "") return "";
          // return null;
        },
        decoration: InputDecoration(



            prefixIcon: Icon(
              Icons.email_outlined,
              color: Colors.grey,
            ),
            prefixStyle: TextStyle(color: Colors.grey, fontSize: 16),
            // prefixText: "+92 ",
            hintText: "Email Address"),
      );

  }
  String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value))
      return '';
    else
      return null;
  }
}