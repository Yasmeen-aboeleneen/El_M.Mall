import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Data/DataSource/Static/static.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kOffWhite,
      body: Padding(
        padding: const EdgeInsets.only(top: 85, left: 1, right: 1),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
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
              ),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      ...List.generate(
                          onBoardingList.length,
                          (index) => AnimatedContainer(
                                margin: const EdgeInsets.all(3),
                                duration: const Duration(microseconds: 200),
                                width: w * .04,
                                height: h * .004,
                                decoration: BoxDecoration(
                                    color: kGrey,
                                    // shape: BoxShape.circle,
                                    borderRadius: BorderRadius.circular(30)),
                              ))
                    ])
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
