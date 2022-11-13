library dashboard_view;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart' as Shimmer;
import 'package:skeletons/skeletons.dart';
import 'package:task_app/app/features/dashboard/controller/dashboard_controller.dart';
import 'package:task_app/app/ultis/animations/animations.dart';
import '../../../../config/theme/app_basic_theme.dart';

part '../components/feed_box.dart';
part '../components/stories_row.dart';
part '../components/float_botton.dart';

class DashboardScreen extends GetView<DashboardController> {
  DashboardScreen({Key? key}) : super(key: key);
  DashboardController _dashboardController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      floatingActionButton: _FloatingButton(),
      // resizeToAvoidBottomInset: false,
      body: Container(
          color: Color(0xffebf2f8),
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Container(
                      width: Get.width,
                      height: Get.height,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Obx(() => controller.isLoading.value == true
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : Column(
                              children: [
                                Expanded(flex: 2, child: _StoriesRow()),
                                Expanded(flex: 9, child: _FeedBox())
                              ],
                            ))))
            ],
          )),
    ));
  }
}
