import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../config/extensions/resposive.dart';
import '../../../config/helpers/images.dart';
import '../../../config/theme/app_colors.dart';
import '../../global/widgets/components/custom_scroller.dart';
import 'logic/login_controller.dart';
import 'widgets/login_form.dart';
import 'widgets/social_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      initState: (_) {},
      builder: (ctrl) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          body: CustomScroller(
            child: Column(
              children: [
                SizedBox(
                  height: context.hp(12),
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 100),
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(
                      Images.logo,
                      height: context.hp(20),
                      width: context.wp(80),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: context.hp(2),
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 200),
                  child: Text(
                    'sign_in'.tr,
                    style: const TextStyle(
                      color: AppColors.textColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: context.hp(3),
                ),
                const LoginForm(),
                SizedBox(
                  height: context.hp(2),
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 550),
                  child: GestureDetector(
                    onTap: () {
                      ctrl.onForgotPassword();
                    },
                    child: Text(
                      'forgot_pwd'.tr,
                      style: const TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.hp(2),
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 550),
                  child: Text(
                    'continue_with'.tr,
                  ),
                ),
                SizedBox(
                  height: context.hp(3),
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 600),
                  child: const SocialButtons(),
                ),
                SizedBox(
                  height: context.hp(1),
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 700),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'no_account'.tr,
                        style: const TextStyle(
                          color: Color(0xffa2a2a2),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      CupertinoButton(
                        onPressed: () {
                          ctrl.onSignUp();
                        },
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          'sign_up'.tr,
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
