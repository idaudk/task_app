part of docs_view;

class _HeaderText extends StatelessWidget {
  const _HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Upload Documents",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 33.r,
                color: Colors.white)),
      ],
    );
  }
}
