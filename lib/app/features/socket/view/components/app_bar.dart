part of socket_view;

class _AppBar extends GetView<SocketController> {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppBasicTheme().backgroundColor,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                flex: 8,
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                    SizedBox(width: 14.w),
                    Text(
                      'Web Socket Screen',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.r,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            Expanded(
              flex: 3,
              child: Obx(
                () => Bubble(
                  alignment: Alignment.center,
                  color: controller.status.value == 'connected'
                      ? AppBasicTheme().primaryColor
                      : Colors.orange,
                  child: Text(controller.status.value,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 11.0,
                        color: controller.status.value == 'connected'
                            ? Colors.white
                            : Colors.white,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
