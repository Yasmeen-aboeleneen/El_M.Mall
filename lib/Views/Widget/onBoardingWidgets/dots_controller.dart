import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Data/DataSource/Static/static.dart';
import 'package:flutter/material.dart';

class DotsController extends StatelessWidget {
  const DotsController({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      ...List.generate(
          onBoardingList.length,
          (index) => AnimatedContainer(
                margin: const EdgeInsets.all(3),
                duration: const Duration(microseconds: 200),
                width: w * .04,
                height: h * .004,
                decoration: BoxDecoration(
                    color: kGrey, borderRadius: BorderRadius.circular(30)),
              ))
    ]);
  }
}
