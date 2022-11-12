library dashboard_view;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:task_app/app/features/dashboard/controller/dashboard_controller.dart';
import 'package:task_app/app/ultis/animations/animations.dart';
import '../../../../ultis/animations/slide_animation.dart';

part '../components/feed_box.dart';
part '../components/stories_row.dart';

class DashboardScreen extends GetView<DashboardController> {
  DashboardScreen({Key? key}) : super(key: key);
  DashboardController _dashboardController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          // resizeToAvoidBottomInset: false,
          body: Container(
              color: Color(0xffebf2f8),
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: SlideAnimation(
                        begin: const Offset(0, 300),
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height - 230.h,
                            padding: EdgeInsets.only(left: 10.w, right: 10.w),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                color: Colors.white),
                            child: Obx(()=> controller.isLoading.value == true ? const Center(child: CircularProgressIndicator(),) :
                            Column(
                              children: [
                                Expanded( flex: 2, child: _StoriesRow()),
                                SizedBox(height: 30.h,),
                                Expanded(flex: 8, child: Center())
                              ],
                            )
                            )
                        ),
                      ))
                ],
              )),
        ));
  }


}