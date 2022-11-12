part of login_view;

class _ForgetPassword extends StatelessWidget {
  const _ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Forget Password?",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.r, color: Colors.white)),
      ],
    );
  }
}
