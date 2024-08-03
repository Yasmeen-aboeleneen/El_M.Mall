import 'package:elmamlouk_mall/routes.dart';
import 'package:get/get.dart';

abstract class SuccessNewPasswordController extends GetxController {
  goToLoginScreen();
}

class SuccessNewPasswordControllerImplement
    extends SuccessNewPasswordController {
  @override
  @override
  goToLoginScreen() {
    Get.offNamed(AppRoutes.loginScreen);
  }
}
