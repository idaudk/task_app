import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:task_app/app/constants/constants.dart';


class ApiHelper {
  int connectionTimeOutSecond = 20;
  // final timeoutResponse = utf8.encode(json.encode({
  //   "detail": "Server time out!",
  // }));



  Future<dynamic> userLogin() async {
    try {
      final response = await http.get(Uri.parse(Constants.baseUrl)).
          timeout(Duration(seconds: connectionTimeOutSecond));
      // var responseJson = json.decode(response.body.toString());
      // print(responseJson);
      return response;
    } on SocketException {
      Get.snackbar('Oops', 'No Internet connection');
      // throw FetchDataException('No Internet connection');
    } on TimeoutException catch (e) {
      Get.snackbar('Request Timeout!', e.toString());
    } on HttpException catch (e) {
      Get.snackbar('Http Exception', e.toString());
    }
  }

  Future<dynamic> getImages() async {
    try {
      final response = await http.get(Uri.parse(Constants.imagesUrl)).
      timeout(Duration(seconds: connectionTimeOutSecond));
      // var responseJson = json.decode(response.body.toString());
      // print(responseJson);
      return response;
    } on SocketException {
      Get.snackbar('Oops', 'No Internet connection');
      // throw FetchDataException('No Internet connection');
    } on TimeoutException catch (e) {
      Get.snackbar('Request Timeout!', e.toString());
    } on HttpException catch (e) {
      Get.snackbar('Http Exception', e.toString());
    }
  }

}