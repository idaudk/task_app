library docs_view;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pdf_render/pdf_render_widgets.dart';
import 'package:task_app/app/config/theme/app_basic_theme.dart';
import 'package:task_app/app/features/upload_docs/controller/docs_controller.dart';

import '../../controller/docs_controller.dart';

part '../components/header_text.dart';
part '../components/progress_indicators.dart';
part '../components/profile_pic_field.dart';
part '../components/driving_license_field.dart';
part '../components/certificate_field.dart';
part '../components/passport_field.dart';
part '../components/done_button.dart';

class DocsScreen extends StatelessWidget {
  DocsScreen({Key? key}) : super(key: key);
  DocsController _docsController = Get.put(DocsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
        width: Get.width,
        height: Get.height,
        color: AppBasicTheme().backgroundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 120.h,
                      ),
                      _HeaderText(),
                      SizedBox(
                        height: 30.h,
                      ),
                      _ProgressIndicator(),
                      SizedBox(
                        height: 50.h,
                      ),
                      _ProfilePicField(),
                      SizedBox(
                        height: 20.h,
                      ),
                      _DrivingLicenseField(),
                      SizedBox(
                        height: 20.h,
                      ),
                      _CertificateField(),
                      SizedBox(
                        height: 20.h,
                      ),
                      _PassportField(),
                      SizedBox(
                        height: 50.h,
                      ),
                      _DoneButton()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
