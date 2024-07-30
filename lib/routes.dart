import 'package:elmamlouk_mall/Views/Auth/login_screen.dart';
import 'package:elmamlouk_mall/Views/Auth/sign_up_screen.dart';
import 'package:elmamlouk_mall/Views/Langs/languages_screen.dart';
import 'package:elmamlouk_mall/Views/OnBoarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String onBoardingScreen = "/onBoardingScreen";
  static const String loginScreen = "/loginScreen";
  static const String signUpScreen = "/signUpScreen";
  static const String languageScreen = "/languageScreen";
}

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.onBoardingScreen: (context) => const OnboardingScreen(),
  AppRoutes.loginScreen: (context) => const LoginScreen(),
  AppRoutes.signUpScreen: (context) => const SignUpScreen(),
  AppRoutes.languageScreen: (context) => const LanguagesScreen(),
};
