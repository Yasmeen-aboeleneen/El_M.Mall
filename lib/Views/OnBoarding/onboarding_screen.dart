import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Views/Widget/onBoardingWidgets/dots_controller.dart';
import 'package:elmamlouk_mall/Views/Widget/onBoardingWidgets/onBoardingContainer.dart';
import 'package:elmamlouk_mall/Views/Widget/onBoardingWidgets/pageView.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kveryWhite,
      body: Padding(
        padding: const EdgeInsets.only(top: 85, left: 1, right: 1),
        child: Column(
          children: [
            const Expanded(
              flex: 3,
              child: CustomPageview(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    const DotsController(),
                    SizedBox(
                      height: h * .04,
                    ),
                    const Onboardingcontainer()
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
