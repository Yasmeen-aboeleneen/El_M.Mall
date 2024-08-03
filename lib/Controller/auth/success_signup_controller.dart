import 'package:elmamlouk_mall/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignupController extends GetxController {
  goToLoginScreen();
}

class SuccessSignupControllerImplement extends SuccessSignupController {
  @override
  @override
  goToLoginScreen() {
    Get.offNamed(AppRoutes.loginScreen);
  }
}
