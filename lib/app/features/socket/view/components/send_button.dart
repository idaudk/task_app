part of socket_view;

class _SendButton extends GetView<SocketController> {
  const _SendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ElevatedButton(
        style: context.theme.elevatedButtonTheme.style,
        onPressed: controller.isLoading.value || controller.status.value == 'connecting...'
            ? null
            : () async {
                controller.sendMessage();
              },
        child: controller.isLoading.value || controller.status.value == 'connecting...' || controller.status.value == 'closed' || controller.status.value == 'disconnected'
            ? SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(),
              )
            : Icon(Icons.send),
      ),
    );
  }
}
