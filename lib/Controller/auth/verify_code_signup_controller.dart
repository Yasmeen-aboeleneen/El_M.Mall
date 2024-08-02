import 'package:elmamlouk_mall/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeForSignUpController extends GetxController {
  checkCode();
 goToSuccessSignUp();
}

class VerifyCodeForSignUpControllerImplement extends VerifyCodeForSignUpController {
  late String verifyCode;
  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoutes.successSignupScreen);
  }

  @override
  void onInit() {
    super.onInit();
  }
}