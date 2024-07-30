import 'package:elmamlouk_mall/routes.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
}

class LoginControllerImplement extends LoginController {
  @override
  login() {}

  @override
  goToSignUp() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
