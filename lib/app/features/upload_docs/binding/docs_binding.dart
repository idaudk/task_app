import 'package:get/get.dart';
import 'package:task_app/app/features/upload_docs/controller/docs_controller.dart';

class DocsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DocsController());
  }
}