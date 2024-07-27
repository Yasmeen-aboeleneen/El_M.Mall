import 'package:elmamlouk_mall/Controller/onBoarding_controller.dart';
import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Data/DataSource/Static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DotsController extends StatelessWidget {
  const DotsController({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return GetBuilder<OnboardingControllerImplement>(
        builder: (controller) =>
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ...List.generate(
                  onBoardingList.length,
                  (index) => AnimatedContainer(
                        margin: const EdgeInsets.all(3),
                        duration: const Duration(milliseconds: 900),
                        width: controller.currentPageIndex == index
                            ? w * .05
                            : w * .02,
                        height: h * .005,
                        decoration: BoxDecoration(
                            color: controller.currentPageIndex == index
                                ? kPrimary
                                : kGrey,
                            borderRadius: BorderRadius.circular(10)),
                      ))
            ]));
  }
}
