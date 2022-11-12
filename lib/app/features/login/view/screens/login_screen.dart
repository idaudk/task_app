library login_view;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/login_controller.dart';

part '../components/password_field.dart';
part '../components/header_text.dart';
part '../components/email_field.dart';
part '../components/login_button.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                    SizedBox(
                      width: Get.width,
                      height: Get.height,
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
                            Spacer(flex: 1,),

                            Spacer(flex: 9),

                          ],
                        ),
                      ),
                    ),
                  ]))
            ],
          )),
    );
  }
}