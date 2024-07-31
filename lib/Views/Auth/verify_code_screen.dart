import 'package:elmamlouk_mall/Controller/auth/forgot_password_controller.dart';
import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ForgotPasswordControllerImplement controller =
    //     Get.put(ForgotPasswordControllerImplement());
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: h * .25),
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
          Center(
            child: Text(
              "We've sent the code to your email",
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
          Padding(
            padding:  EdgeInsets.only(left: w*.06,bottom: h*.03),
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
          CustomButton(
              title: "Verify",
              onpressed: () {
                // controller.goToVerifyCode();
              }),
          SizedBox(
            height: h * .035,
          ),
        ],
      ),
    ));
  }
}
