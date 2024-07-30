import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Core/Localization/change_language.dart';
import 'package:elmamlouk_mall/Views/Widget/LangWidgets/customLangButton.dart';
import 'package:elmamlouk_mall/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguagesScreen extends GetView<LocaleController> {
  const LanguagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "titleLanguage".tr,
              style: GoogleFonts.notoSansOlChiki(
                  fontWeight: FontWeight.bold,
                  fontSize: w * .055,
                  color: kPrimary),
            ),
            SizedBox(
              height: h * .04,
            ),
            Customlangbutton(
              title: "اللغة العربية",
              onpressed: () {
                controller.changeLang("ar");
                Get.toNamed(AppRoutes.onBoardingScreen);
              },
            ),
            SizedBox(
              height: h * .01,
            ),
            Customlangbutton(
              title: "English",
              onpressed: () {
                controller.changeLang("en");
                Get.toNamed(AppRoutes.onBoardingScreen);
              },
            )
          ],
        ),
      ),
    );
  }
}
