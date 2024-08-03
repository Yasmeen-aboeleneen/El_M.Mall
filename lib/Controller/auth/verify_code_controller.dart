import 'package:elmamlouk_mall/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword();
}

class VerifyCodeControllerImplement extends VerifyCodeController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late String verifyCode;
  @override
  checkCode() {}

  @override
  goToResetPassword() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      Get.offNamed(AppRoutes.resetPasswordScreen);
    } else {
      print('Not valid');
    }
  }

  @override
  void onInit() {
    super.onInit();
  }
}
