import 'package:elmamlouk_mall/Core/Services/services.dart';
import 'package:elmamlouk_mall/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyMiddleware extends GetMiddleware {
  int? get Priority => 1;

  MyServices myServices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onboarding") == "1") {
      return const RouteSettings(name: AppRoutes.loginScreen);
    }
  }
}
