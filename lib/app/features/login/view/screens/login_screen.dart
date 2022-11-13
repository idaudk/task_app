library login_view;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:task_app/app/config/theme/app_basic_theme.dart';
import 'package:task_app/app/constants/assets_constants.dart';
import 'package:task_app/app/ultis/animations/animations.dart';
import '../../controller/login_controller.dart';

part '../components/password_field.dart';
part '../components/header_text.dart';
part '../components/email_field.dart';
part '../components/login_button.dart';
part '../components/forget_password.dart';
part '../components/register.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

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
                width: Get.width,
                height: Get.height,
                child: Stack(
                  children: [
                    Positioned(
                        top: 1,
                        left: 1,
                        child: SvgPicture.asset(
                          ImageVectorConstant.top_left_back,
                          color: AppBasicTheme().primaryColorLight,
                          width: 280.w,
                        )),
                    Positioned(
                        top: 1,
                        left: 1,
                        child: SvgPicture.asset(
                          ImageVectorConstant.top_left_front,
                          color: AppBasicTheme().primaryColor,
                          width: 130.w,
                        )),
                    Form(
                      key: controller.formKey,
                      child: FadeAnimation(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(flex: 13),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: _HeaderText(),
                            ),
                            Spacer(flex: 1),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: _EmailAddressField(),
                            ),
                            Spacer(flex: 1),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: _PasswordField(),
                            ),
                            Spacer(flex: 1),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: _LoginButton(),
                            ),
                            Spacer(
                              flex: 1,
                            ),
                            _ForgetPassword(),
                            Spacer(flex: 2),
                            _RegisterButton(),
                            Spacer(flex: 9),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 1,
                        right: 1,
                        child: SvgPicture.asset(
                          ImageVectorConstant.bottom_curve,
                          color: AppBasicTheme().primaryColor,
                          width: 100.w,
                        )),
                    Positioned(
                        bottom: 1,
                        left: 1,
                        child: SvgPicture.asset(
                          ImageVectorConstant.left_bottom,
                          color: AppBasicTheme().primaryColor,
                          width: 220.w,
                        ))
                  ],
                ),
              ),
            ]))
          ],
        ));
  }
}
