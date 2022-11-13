part of socket_view;

class _MessageBox extends GetView<SocketController> {
  const _MessageBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.messageController,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Message Require';
        }
        return null;
      },
      decoration: const InputDecoration(
          prefixIcon: Icon(
            Icons.message_rounded,
            color: Colors.grey,
          ),
          prefixStyle: TextStyle(color: Colors.grey, fontSize: 16),
          hintText: "Enter you message"),
    );
  }
}
