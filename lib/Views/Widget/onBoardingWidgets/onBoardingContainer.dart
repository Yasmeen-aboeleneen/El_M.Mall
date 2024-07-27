import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboardingcontainer extends StatelessWidget {
  const Onboardingcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: h * .06,
        width: w * .5,
        decoration: BoxDecoration(
            color: kPrimary, borderRadius: BorderRadius.circular(25)),
        child: Center(
          child: Text(
            'Continue',
            style: GoogleFonts.cairo(
                fontWeight: FontWeight.bold,
                fontSize: w * .05,
                color: kveryWhite),
          ),
        ),
      ),
    );
  }
}
