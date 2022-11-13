part of socket_view;

class _HeaderText extends GetView<SocketController> {
  const _HeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 4,
          child: Text(
            "Web Socket Screen",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.r,
                color: AppBasicTheme().backgroundColor),
          ),
        ),
        Expanded(
          flex: 2,
          child: Obx(
            () => Bubble(
              alignment: Alignment.center,
              color: controller.status.value == 'connected'
                  ? Color.fromRGBO(212, 234, 244, 1.0)
                  : Colors.orange,
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
