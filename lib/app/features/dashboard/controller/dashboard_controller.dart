import 'dart:convert';

import 'package:get/get.dart';
import 'package:task_app/app/config/routes/app_pages.dart';
import 'package:task_app/app/ultis/models/images_model.dart';
import 'package:http/http.dart' as http;

import '../../../ultis/helpers/api_helper.dart';

class DashboardController extends GetxController {
  var isLoading = true.obs;
  final ApiHelper _apiHelper = ApiHelper();
  List<ImagesModel> imagesList = [];

  @override
  void onInit() {
    super.onInit();
    getImages();
  }

  void getImages() async {
    http.Response? response = await _apiHelper.getImages();
    if (response == null) {
      print('No response, try again');
    } else {
      if (response.statusCode == 200) {
        for (var k in json.decode(response.body.toString())) {
          imagesList.add(ImagesModel.fromJson(k));

          //adding each value to the list
        }
        print(imagesList.length);
      } else {
        Get.snackbar('Login Failed', 'Error, Please try again.');
      }
    }
    isLoading.value = false;
  }

  void gotoSocketScreen() {
    Get.toNamed(Routes.socket);
  }
}
