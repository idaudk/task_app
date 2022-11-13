part of socket_view;

class _ResponseBox extends GetView<SocketController> {
  const _ResponseBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        height: Get.width / 0.7,
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
            borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.all(12.0),
        child: GetBuilder<SocketController>(
            id: "responseBox",
            init: SocketController(),
            builder: (_) {
              return ListView.builder(
                  itemCount: controller.responseList.length,
                  itemBuilder: (_, index) {
                    return Bubble(
                      margin: BubbleEdges.only(top: 10),
                      alignment: Alignment.topRight,
                      nipWidth: 8,
                      nipHeight: 24,
                      nip: BubbleNip.rightTop,
                      color: AppBasicTheme().primaryColor,
                      child: Text(controller.responseList[index],
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.right),
                    );
                  });
            }));
  }
}
