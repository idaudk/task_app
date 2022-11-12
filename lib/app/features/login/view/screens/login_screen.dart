library login_view;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task_app/app/config/theme/app_basic_theme.dart';
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
        body: CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
            width: Get.width,
            height: Get.height,
            color: AppBasicTheme().backgroundColor,
            child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 9),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: _HeaderText(),
                  ),
                  Spacer(flex: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: _EmailAddressField(),
                  ),
                  Spacer(flex: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: _PasswordField(),
                  ),
                  Spacer(flex: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
        ]))
      ],
    ));
  }
}
