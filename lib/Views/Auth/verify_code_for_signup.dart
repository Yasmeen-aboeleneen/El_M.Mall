import 'package:elmamlouk_mall/Controller/auth/verify_code_signup_controller.dart';
import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyCodeForSignUpScreen extends StatelessWidget {
  const VerifyCodeForSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    VerifyCodeForSignUpControllerImplement controller =
        Get.put(VerifyCodeForSignUpControllerImplement());
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
                    "Check Your Email",
                    style: GoogleFonts.notoSansOlChiki(
                        fontWeight: FontWeight.bold,
                        fontSize: w * .068,
                        color: kPrimary),
                  ),
                ),
                SizedBox(
                  height: h * .011,
                ),
                Text(
                  "We've sent the code to\n yasmeenaboeleneen10@gmail.com",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.notoSansOlChiki(
                      fontWeight: FontWeight.bold,
                      fontSize: w * .04,
                      color: kGrey),
                ),
                SizedBox(
                  height: h * .06,
                ),
                OtpTextField(
                  numberOfFields: 5,
                  borderColor: kPrimary,
                  cursorColor: kPrimary,
                  fieldWidth: w * .13,
                  borderRadius: BorderRadius.circular(20),
                  showFieldAsBox: true,
                  onCodeChanged: (String code) {},
                  onSubmit: (String verificationCode) {
                    controller.goToSuccessSignUp();
                  },
                ),
                SizedBox(
                  height: h * .06,
                ),
                Padding(
                  padding: EdgeInsets.only(left: w * .06, bottom: h * .03),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      child: Text(
                        "Send code again",
                        style: GoogleFonts.notoSansOlChiki(
                            fontWeight: FontWeight.bold,
                            fontSize: w * .04,
                            color: kGrey,
                            decoration: TextDecoration.underline,
                            decorationColor: kGrey),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
