import 'package:elmamlouk_mall/Controller/auth/forgot_password_controller.dart';
import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customButton.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customPassTextField.dart';
 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordScreen  extends StatelessWidget {
  const ResetPasswordScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPasswordControllerImplement controller =
        Get.put(ForgotPasswordControllerImplement());
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: h * .25),
      child: ListView(
        children: [
          Center(
            child: Text(
              "Reset Your Password",
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
              "Please enter your new password",
              style: GoogleFonts.notoSansOlChiki(
                  fontWeight: FontWeight.bold, fontSize: w * .04, color: kGrey),
            ),
          ),
          SizedBox(
            height: h * .06,
          ),
        // CustomPasswordtextfield(
        //         hintText: "Enter your password",
        //         labelText: "Password",
        //         textEditingController: controller.password,
        //       ),
          SizedBox(
            height: h * .06,
          ),
          CustomButton(
              title: "Check",
              onpressed: () {
                controller.goToVerifyCode();
              }),
          SizedBox(
            height: h * .035,
          ),
        ],
      ),
    ));
  }
}
