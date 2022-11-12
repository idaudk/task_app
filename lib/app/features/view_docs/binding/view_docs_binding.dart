import 'package:get/get.dart';

import '../controller/view_docs_controller.dart';



class ViewDocsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewDocsController());
  }
}