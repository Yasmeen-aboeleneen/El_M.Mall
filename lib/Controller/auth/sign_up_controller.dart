import 'package:elmamlouk_mall/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  goToSignUp();
}

class SignUpControllerImplement extends SignUpController {
  late TextEditingController userName;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phoneNumber;
  @override
  signUp() {}

  @override
  goToSignUp() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  @override
  void onInit() {
    userName = TextEditingController();
    email = TextEditingController();
    phoneNumber = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    userName.dispose();
    email.dispose();
    phoneNumber.dispose();
    password.dispose();

    super.dispose();
  }
}
