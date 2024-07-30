import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Core/Constants/images.dart';
import 'package:elmamlouk_mall/Views/OnBoarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const OnboardingScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
      height: h,
      width: w,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [kPrimary, kveryWhite, kveryWhite, kPrimary2])),
      child: Stack(children: [
        Image.asset(
          Images.logo2,
          width: w * 2,
          height: h * .7,
        ),
        Positioned(
          top: h * .27,
          bottom: 0,
          left: 20,
          right: 20,
          child: Center(
            child: Text(
              "مول المملوك",
              style: GoogleFonts.notoNaskhArabic(
                  fontSize: w * .17,
                  fontWeight: FontWeight.bold,
                  color: kPrimary),
            ),
          ),
        )
      ]),
    ));
  }
}
