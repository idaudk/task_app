library socket_view;

import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_app/app/config/theme/app_basic_theme.dart';
import 'package:task_app/app/features/socket/controller/socket_controller.dart';

part '../components/header_text.dart';
part '../components/send_button.dart';
part '../components/message_box.dart';
part '../components/socket_data_box.dart';
part '../components/response_box.dart';

class SocketScreen extends GetView<SocketController> {
  const SocketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppBasicTheme().backgroundColor,
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
                width: Get.width,
                height: Get.height,
                color: AppBasicTheme().backgroundColor,
                child: Form(
                  key: controller.msgKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(flex: 4),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: _HeaderText(),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      _ResponseBox(),
                      // _SocketData(),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        children: [
                          Expanded(flex: 3, child: _MessageBox()),
                          SizedBox(
                            width: 15.w,
                          ),
                          Expanded(flex: 1, child: _SendButton())
                        ],
                      ),

                      Spacer(flex: 4),
                    ],
                  ),
                ),
              ),
            ]))
          ],
        ));
  }
}
