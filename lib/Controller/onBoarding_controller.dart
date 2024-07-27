import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    pageController.animateToPage(
        duration: const Duration(milliseconds: 900),
        curve: Curves.easeInOut,
        currentPageIndex);
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
