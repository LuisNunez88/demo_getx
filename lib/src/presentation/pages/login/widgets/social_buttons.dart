import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../config/helpers/images.dart';
import '../logic/login_controller.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  static final ctrl = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SlideInLeft(
            delay: const Duration(milliseconds: 800),
            child: ElevatedButton.icon(
              onPressed: () {
                ctrl.onLogin();
              },
              icon: SvgPicture.asset(
                Images.fb,
                width: 30,
                height: 30,
              ),
              label: Text(
                'fb'.tr,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 60),
                elevation: 0,
                side: BorderSide(
                  width: 1.0,
                  color: Colors.grey.withOpacity(0.2),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            )),
        SlideInRight(
            delay: const Duration(milliseconds: 800),
            child: ElevatedButton.icon(
              onPressed: () {
                ctrl.onLogin();
              },
              icon: SvgPicture.asset(
                Images.google,
                width: 30,
                height: 30,
              ),
              label: Text(
                'google'.tr,
                style: const TextStyle(
                  // color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 60),
                // backgroundColor: ColorRes.white,
                elevation: 0,
                side: BorderSide(
                  width: 1.0,
                  color: Colors.grey.withOpacity(0.2),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ))
      ],
    );
  }
}
