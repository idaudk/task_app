import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:task_app/app/config/routes/app_pages.dart';
import 'package:task_app/app/ultis/models/user_info_model.dart';

import '../../../ultis/helpers/api_helper.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final passwordController = TextEditingController();
  final emailAddressController = TextEditingController();
  final isLoading = false.obs;
  var isObscure = true.obs;
  final ApiHelper _apiHelper = ApiHelper();
  List<UserInfo> userInfoList = [];

  @override
  void onInit() {
    // httpService.init();
    super.onInit();
  }

  void newLoginHandler() async {
    if (formKey.currentState!.validate()) {
      if (emailAddressController.text == passwordController.text) {
        isLoading.value = true;
        http.Response? response = await _apiHelper.userLogin();
        if (response == null) {
          print('No response, try again');
        } else {
          if (response.statusCode == 200) {
            for (var k in json.decode(response.body.toString())) {
              userInfoList
                  .add(UserInfo.fromJson(k)); //adding each value to the list
            }
            print(userInfoList.length);
            var isAvailable = userInfoList
                .where((element) =>
                    element.email!.toLowerCase() ==
                    emailAddressController.text.toLowerCase())
                .toList();
            if (isAvailable.isNotEmpty) {
              Get.toNamed(Routes.uploadDocs);
            }

            userInfoList.clear();
            isAvailable.clear();
          } else {
            Get.snackbar('Login Failed', 'Error, Please try again.');
          }
        }
        isLoading.value = false;
      } else {
        Get.snackbar('Error', 'Email/password is incorrect');
      }
    }
  }
}
