import 'package:elmamlouk_mall/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class VerifyCodeForSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp();
}

class VerifyCodeForSignUpControllerImplement
    extends VerifyCodeForSignUpController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late String verifyCode;
  @override
  checkCode() {}

  @override
  goToSuccessSignUp() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRoutes.successSignupScreen);
    } else {
      print('Not valid');
    }
  }

  @override
  void onInit() {
    super.onInit();
  }
}
