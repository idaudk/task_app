part of socket_view;

class _HeaderText extends GetView<SocketController> {
  const _HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(
            "Web Socket Screen",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.r,
                color: Colors.white),
          ),
        ),
        Expanded(
          flex: 2,
          child: Obx(
            () => Bubble(
              alignment: Alignment.center,
              color: Color.fromRGBO(212, 234, 244, 1.0),
              child: Text(controller.status.value,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 11.0)),
            ),
          ),
        ),
      ],
    );
  }
}
