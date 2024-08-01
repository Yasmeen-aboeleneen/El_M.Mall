import 'package:elmamlouk_mall/Controller/auth/check_email_controller.dart';
import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customButton.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImplement controller =
        Get.put(CheckEmailControllerImplement());
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kveryWhite,
        body: Container(
      padding: EdgeInsets.only(top: h * .25),
      child: ListView(
        children: [
          Center(
            child: Text(
              "Check Email",
              style: GoogleFonts.notoSansOlChiki(
                  fontWeight: FontWeight.bold,
                  fontSize: w * .068,
                  color: kPrimary),
            ),
          ),
          SizedBox(
            height: h * .011,
          ),
          Center(
            child: Text(
              "Enter your email to check it",
              style: GoogleFonts.notoSansOlChiki(
                  fontWeight: FontWeight.bold, fontSize: w * .04, color: kGrey),
            ),
          ),
          SizedBox(
            height: h * .06,
          ),
          Customtextfield(
            labelText: 'Email',
            hintText: 'Enter your email',
            iconData: Icons.mail_outline_outlined,
            textEditingController: controller.email,
          ),
          SizedBox(
            height: h * .06,
          ),
          CustomButton(
              title: "Check",
              onpressed: () {
                controller.goToSuccessSignUp();
              }),
          SizedBox(
            height: h * .035,
          ),
        ],
      ),
    ));
  }
}
