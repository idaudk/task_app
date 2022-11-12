import 'dart:io';
import 'dart:typed_data';
import 'package:get/get.dart';

class ViewDocsController extends GetxController {
  Uint8List? pdfImage;
  File? profileImage;
  File? drivingLicense;

  var isPdf = false.obs;

  String? fileType;
  File? file;

  @override
  void onInit() {
    super.onInit();
    file = _getFile();
    fileType = _getFileType();
    if(fileType == 'pdf'){
      isPdf.value = true;
    }
    print(fileType.toString());
  }

  @override
  void onClose(){
    super.onInit();
    Get.log('closedf');
    file = null;
    fileType =null;
  }

  String _getFileType() {
    try {
      return Get.arguments['fileType'];
    } catch (_) {
      return 'null';
    }
  }

  File? _getFile() {
    try {
      return Get.arguments['file'];
    } catch (_) {
     return null;
    }
  }


}
