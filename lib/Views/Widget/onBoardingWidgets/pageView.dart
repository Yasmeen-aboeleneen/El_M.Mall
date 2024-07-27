import 'package:elmamlouk_mall/Controller/onBoarding_controller.dart';
import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Data/DataSource/Static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomPageview extends GetView<OnboardingControllerImplement> {
  const CustomPageview({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onPageChanged(value);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, index) => Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            onBoardingList[index].title!,
            style: GoogleFonts.cairo(
                fontWeight: FontWeight.bold,
                fontSize: w * .07,
                color: kPrimary),
          ),
          Image.asset(
            onBoardingList[index].imgPath!,
            height: h * .5,
            width: w,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              textAlign: TextAlign.center,
              onBoardingList[index].body!,
              style: GoogleFonts.cairo(
                  fontWeight: FontWeight.bold,
                  fontSize: w * .05,
                  color: kPrimary2),
            ),
          ),
        ],
      ),
    );
  }
}
