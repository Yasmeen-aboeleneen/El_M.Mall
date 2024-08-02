import 'package:elmamlouk_mall/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetpasswordController extends GetxController {
  resetPassword();
  goToSuccessNewPas();
}

class ResetpasswordControllerImplement extends ResetpasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController repassword;
  @override
  resetPassword() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print('Valid');
    } else {
      print('Not valid');
    }
  }

  @override
  goToSuccessNewPas() {
    Get.offNamed(AppRoutes.successNewPassScreen);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
