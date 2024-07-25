import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
          "Assets/Images/logo2.png",
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
