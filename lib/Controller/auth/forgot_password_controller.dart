import 'package:elmamlouk_mall/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgotPasswordController extends GetxController {
  checkEmail();
  goToVerifyCode();
}

class ForgotPasswordControllerImplement extends ForgotPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  checkEmail() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print('Valid');
    } else {
      print('Not valid');
    }
  }

  @override
  goToVerifyCode() {
    Get.offNamed(AppRoutes.verifyCodeScreen);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
     email.dispose();
 
    super.dispose();
  }
}
