import 'package:get/get.dart';
import 'package:task_app/app/features/socket/controller/socket_controller.dart';


class SocketBindig extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SocketController());
  }
}