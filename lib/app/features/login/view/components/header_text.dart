part of login_view;

class _HeaderText extends StatelessWidget {
  const _HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Log In",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.r,
                color: Colors.white)),
      ],
    );
  }
}
