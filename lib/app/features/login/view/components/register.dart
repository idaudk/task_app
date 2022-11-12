part of login_view;

class _RegisterButton extends StatelessWidget {
  const _RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Register Here",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.r,
                color: Colors.white)),
      ],
    );
  }
}
