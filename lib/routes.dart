import 'package:elmamlouk_mall/Views/Auth/forgot_password_screen.dart';
import 'package:elmamlouk_mall/Views/Auth/login_screen.dart';
import 'package:elmamlouk_mall/Views/Auth/reset_password_screen.dart';
import 'package:elmamlouk_mall/Views/Auth/sign_up_screen.dart';
import 'package:elmamlouk_mall/Views/Auth/verify_code_screen.dart';
import 'package:elmamlouk_mall/Views/Langs/languages_screen.dart';
import 'package:elmamlouk_mall/Views/OnBoarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String onBoardingScreen = "/onBoardingScreen";
  static const String loginScreen = "/loginScreen";
  static const String signUpScreen = "/signUpScreen";
  static const String forgotPasswordScreen = "/forgotPasswordScreen";
  static const String verifyCodeScreen = "/verifyCodeScreen";
  static const String resetPasswordScreen = "/resetPasswordScreen";
  static const String languageScreen = "/languageScreen";
}

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.onBoardingScreen: (context) => const OnboardingScreen(),
  AppRoutes.loginScreen: (context) => const LoginScreen(),
  AppRoutes.signUpScreen: (context) => const SignUpScreen(),
  AppRoutes.forgotPasswordScreen: (context) => const ForgotPasswordScreen(),
  AppRoutes.verifyCodeScreen: (context) => const VerifyCodeScreen(),
  AppRoutes.resetPasswordScreen: (context) => const ResetPasswordScreen(),
  AppRoutes.languageScreen: (context) => const LanguagesScreen(),
};
