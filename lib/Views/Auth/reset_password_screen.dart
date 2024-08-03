import 'package:elmamlouk_mall/Controller/auth/resetPassword_controller.dart';
import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Core/Utils/Functions/valid_input.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customButton.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customPassTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ResetpasswordControllerImplement controller =
        Get.put(ResetpasswordControllerImplement());
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: kveryWhite,
        body: Container(
          padding: EdgeInsets.only(top: h * .25),
          child: Form(
            key: controller.formState,
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
                        fontWeight: FontWeight.bold,
                        fontSize: w * .04,
                        color: kGrey),
                  ),
                ),
                SizedBox(
                  height: h * .06,
                ),
                CustomPasswordtextfield(
                  valid: (val) {
                    return validInput(val!, 8, 30, "password");
                  },
                  hintText: "Enter your new password",
                  labelText: "New Password",
                  textEditingController: controller.password,
                ),
                SizedBox(
                  height: h * .033,
                ),
                CustomPasswordtextfield(
                  hintText: "Re-enter your new password",
                  labelText: "Confirm Password",
                  textEditingController: controller.repassword,
                  valid: (val) {
                    return validInput(val!, 8, 30, "password");
                  },
                ),
                SizedBox(
                  height: h * .06,
                ),
                CustomButton(
                    title: "Reset",
                    onpressed: () {
                      controller.goToSuccessNewPas();
                    }),
                SizedBox(
                  height: h * .035,
                ),
              ],
            ),
          ),
        ));
  }
}
