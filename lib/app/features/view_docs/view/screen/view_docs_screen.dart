library view_docs_view;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf_render/pdf_render_widgets.dart';
import 'package:task_app/app/features/view_docs/controller/view_docs_controller.dart';

import '../../../../ultis/animations/slide_animation.dart';

part '../components/app_bar.dart';
part '../components/image_box.dart';
part '../components/pdf_box.dart';

class ViewDocsScreen extends GetView<ViewDocsController> {
  ViewDocsScreen({Key? key}) : super(key: key);
  ViewDocsController _viewDocsController = Get.put(ViewDocsController());

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

                  _AppBar(),
                  
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
                            child: Obx(() => controller.isPdf.value == true ? _PdfBox() : _ImageBox())
                        ),
                      ))
                ],
              )),
        ));
  }


}