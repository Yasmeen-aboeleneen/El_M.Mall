import 'package:elmamlouk_mall/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:elmamlouk_mall/Data/DataSource/Static/static.dart';

abstract class OnboardingController extends GetxController {
  nextButton();
  onPageChanged(int index);
}

class OnboardingControllerImplement extends OnboardingController {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  nextButton() {
    currentPageIndex++;

    if (currentPageIndex > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoutes.loginScreen);
    } else {
      pageController.animateToPage(
          duration: const Duration(milliseconds: 900),
          curve: Curves.easeInOut,
          currentPageIndex);
    }
  }

  @override
  onPageChanged(int index) {
    currentPageIndex = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
