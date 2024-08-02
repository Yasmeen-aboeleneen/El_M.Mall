import 'package:elmamlouk_mall/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToHome();
}

class LoginControllerImplement extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;

  @override
  login() {
    var formData = formState.currentState;
    if (formData!.validate()) {
      print('Valid');
    } else {
      print('Not valid');
    }
  }

  @override
  goToSignUp() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  @override
  goToHome() {
    Get.offAllNamed(AppRoutes.homeScreen);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
}
