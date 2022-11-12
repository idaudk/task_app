import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/app/config/routes/app_pages.dart';
import 'package:task_app/app/ultis/models/user_info_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:file_picker/file_picker.dart';

import '../../../ultis/helpers/api_helper.dart';

class DocsController extends GetxController {

  var isButtonActive = false.obs;

  File? profileImage;
  File? drivingLicense;
  File? certificate;
  File? passport;

  ApiHelper _apiHelper = ApiHelper();
  List<UserInfo> userInfoList = [];

  @override
  void onInit() {
    super.onInit();

  }

  doneButtonHandler(){
    if(profileImage != null && drivingLicense != null && certificate != null && passport != null){
      isButtonActive.value = true;
    }
  }

  pickImageFromDevice() async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (file == null) {
      //return;
    } else {
      Get.back();

      profileImage = File(file.path);
      update(["img_field"]);
      doneButtonHandler();

    }
  }

  pickImageFromCamera() async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.camera);
    if (file == null) {
      //return;
    } else {
      Get.back();
      profileImage = File(file.path);
      update(["img_field"]);
      doneButtonHandler();

    }
  }

  pickDrivingLicense() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(allowMultiple: false, type: FileType.custom, allowedExtensions: ['pdf']);

    if (result != null) {
      drivingLicense = File(result.files.single.path.toString());
      update(["license_field", ]);
      doneButtonHandler();

    } else {
      // User canceled the picker
    }
  }

  pickCertificate() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(allowMultiple: false, type: FileType.custom, allowedExtensions: ['pdf']);

    if (result != null) {
      certificate = File(result.files.single.path.toString());
      update(["certificate_field"]);
      doneButtonHandler();

    } else {
      // User canceled the picker
    }
  }

  pickPassport() async {
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(allowMultiple: false, type: FileType.custom, allowedExtensions: ['pdf']);

    if (result != null) {
      passport = File(result.files.single.path.toString());
      update(["passport_field"]);
      doneButtonHandler();

    } else {
      // User canceled the picker
    }
  }

  viewDocsHandler({ required String fileType, required File file}){
    Get.toNamed(
        Routes.viewDocs,
        arguments: {"fileType": fileType, "file" : file});
  }

  gotoDashboard(){
    Get.toNamed(Routes.dashboard);
  }


}
