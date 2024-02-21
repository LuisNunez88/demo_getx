import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../../config/extensions/resposive.dart';
import '../../../global/widgets/components/custom_label.dart';
import '../../../global/widgets/components/password_form_field.dart';
import '../logic/login_controller.dart';
import 'remember_me.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  static final ctrl = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: SizedBox(
        width: context.isPhone ? context.wp(80) : 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeInDown(
              delay: const Duration(milliseconds: 300),
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  left: context.wp(3),
                ),
                child: CustomLabel(
                  'email'.tr,
                  isRequired: true,
                ),
              ),
            ),
            SizedBox(
              height: context.hp(1),
            ),
            FadeInDown(
              delay: const Duration(milliseconds: 300),
              child: TextFormField(),
            ),
            SizedBox(
              height: context.hp(1),
            ),
            FadeInDown(
              delay: const Duration(milliseconds: 400),
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  left: context.wp(3),
                ),
                child: CustomLabel(
                  'password'.tr,
                  isRequired: true,
                ),
              ),
            ),
            SizedBox(
              height: context.hp(1),
            ),
            FadeInDown(
              delay: const Duration(milliseconds: 400),
              child: const PasswordFormField(),
            ),
            FadeInDown(
              delay: const Duration(milliseconds: 450),
              child: RememberMe(
                text: 'remember_me'.tr,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            FadeInDown(
              delay: const Duration(milliseconds: 500),
              child: ElevatedButton(
                onPressed: () {
                  ctrl.onLogin();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(330, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: Text(
                  'sign_in'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
