import 'package:get/get.dart';

import '../../../../config/router/routes.dart';

class LoginController extends GetxController {
  onLogin() {
    Get.offNamed(Routes.home.path);
  }

  onForgotPassword() {}

  onSignUp() {}
}
