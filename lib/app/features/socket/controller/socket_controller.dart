import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_app/app/constants/constants.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SocketController extends GetxController {
  GlobalKey<FormState> msgKey = GlobalKey<FormState>();
  var isLoading = false.obs;

  WebSocketChannel? channel;
  WebSocket? _webSocket;
  TextEditingController? messageController = TextEditingController();
  var status = 'connecting...'.obs;

  var isWebsocketRunning = false.obs; //status of a websocket
  int retryLimit = 3;
  var responseList = <String>[];

  @override
  void onClose() {
    channel!.sink.close();
    status.value = 'closed';
    isWebsocketRunning.value = false; //status of a websocket
    super.onClose();
  }

  @override
  void onReady() {
    startStream();
    super.onReady();
  }

  void sendMessage() {
    isLoading.value = true;
    if (msgKey.currentState!.validate()) {
      channel!.sink.add(messageController!.text);
    }
    messageController!.clear();
    isLoading.value = false;
  }

  void _setData(String data) {
    responseList.add(data);
    update(["responseBox"]);
  }

  void startStream() async {
    if (isWebsocketRunning.value) return; //chaech if its already running
    
    try {
      _webSocket = await WebSocket.connect(Constants.socketUrl);
      channel = IOWebSocketChannel(_webSocket!);
      Get.log('websocket state : ${_webSocket!.readyState}');

      if (_webSocket!.readyState == WebSocket.open) {
        status.value = 'connected';
        channel!.stream.listen(
          (event) {
            _setData(event);
          },
          onDone: () {
            status.value = 'disconnected';
            isWebsocketRunning.value = false;
          },
          onError: (err) {
            status.value = 'Error';
            isWebsocketRunning.value = false;
            if (retryLimit > 0) {
              retryLimit--;
              startStream();
            }
          },
        );
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
      Get.log(e.toString());
    }
  }
}
