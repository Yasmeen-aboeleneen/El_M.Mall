import 'package:elmamlouk_mall/Views/Auth/login_screen.dart';
import 'package:elmamlouk_mall/Views/Langs/languages_screen.dart';
import 'package:elmamlouk_mall/Views/OnBoarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String onBoardingScreen = "/onBoardingScreen";
  static const String loginScreen = "/loginScreen";
  static const String languageScreen = "/languageScreen";
}

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.onBoardingScreen: (context) => const OnboardingScreen(),
  AppRoutes.loginScreen: (context) => const LoginScreen(),
  AppRoutes.languageScreen: (context) => const LanguagesScreen(),
};
