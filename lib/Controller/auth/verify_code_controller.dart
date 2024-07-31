import 'package:elmamlouk_mall/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImplement extends VerifyCodeController {
  late String verifyCode;
  @override
  checkCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetPasswordScreen);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
