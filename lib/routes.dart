import 'package:elmamlouk_mall/Core/MiddleWare/myMiddleWare.dart';
import 'package:elmamlouk_mall/Views/Auth/forgot_password_screen.dart';
import 'package:elmamlouk_mall/Views/Auth/login_screen.dart';
import 'package:elmamlouk_mall/Views/Auth/reset_password_screen.dart';
import 'package:elmamlouk_mall/Views/Auth/sign_up_screen.dart';
import 'package:elmamlouk_mall/Views/Auth/success_SignUp_screen.dart';
import 'package:elmamlouk_mall/Views/Auth/verify_code_for_signup.dart';
import 'package:elmamlouk_mall/Views/Auth/verify_code_screen.dart';
import 'package:elmamlouk_mall/Views/Home/home_screen.dart';
import 'package:elmamlouk_mall/Views/Langs/languages_screen.dart';
import 'package:elmamlouk_mall/Views/OnBoarding/onboarding_screen.dart';
import 'package:elmamlouk_mall/Views/Auth/success_new_pass_screen.dart';
import 'package:elmamlouk_mall/Views/Splash/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes {
  static const String splashScreen = "/";
  static const String onBoardingScreen = "/onBoardingScreen";
  static const String loginScreen = "/loginScreen";
  static const String signUpScreen = "/signUpScreen";
  static const String verifyCodeForSignUpScreen = "/verifyCodeForSignUpScreen";
  static const String successSignupScreen = "/successSignupScreen";
  static const String forgotPasswordScreen = "/forgotPasswordScreen";
  static const String verifyCodeScreen = "/verifyCodeScreen";
  static const String resetPasswordScreen = "/resetPasswordScreen";
  static const String successNewPassScreen = "/successNewPassScreen";
  static const String languageScreen = "/languageScreen";
  static const String homeScreen = "/homeScreen";
}

List<GetPage<dynamic>>? routes = [
  GetPage(name: AppRoutes.splashScreen, page: () => const SplashScreen(),middlewares: [MyMiddleware()]),
  GetPage(
      name: AppRoutes.onBoardingScreen, page: () => const OnboardingScreen(),),
  GetPage(name: AppRoutes.loginScreen, page: () => const LoginScreen()),
  GetPage(name: AppRoutes.signUpScreen, page: () => const SignUpScreen()),
  GetPage(
      name: AppRoutes.verifyCodeForSignUpScreen,
      page: () => const VerifyCodeForSignUpScreen()),
  GetPage(
      name: AppRoutes.successSignupScreen,
      page: () => const SuccessSignupScreen()),
  GetPage(
      name: AppRoutes.forgotPasswordScreen,
      page: () => const ForgotPasswordScreen()),
  GetPage(
      name: AppRoutes.verifyCodeScreen, page: () => const VerifyCodeScreen()),
  GetPage(
      name: AppRoutes.resetPasswordScreen,
      page: () => const ResetPasswordScreen()),
  GetPage(
      name: AppRoutes.successNewPassScreen,
      page: () => const SuccessNewPassScreen()),
  GetPage(name: AppRoutes.languageScreen, page: () => const LanguagesScreen()),
  GetPage(name: AppRoutes.homeScreen, page: () => const HomeScreen()),
];
