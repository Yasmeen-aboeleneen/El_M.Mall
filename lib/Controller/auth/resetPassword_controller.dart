import 'package:elmamlouk_mall/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetpasswordController extends GetxController {
  resetPassword();
  goToSuccessNewPas();
}

class ResetpasswordControllerImplement extends ResetpasswordController {
  late TextEditingController password;
  late TextEditingController repassword;
  @override
  resetPassword() {}

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
