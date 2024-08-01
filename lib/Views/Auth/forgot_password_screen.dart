import 'package:elmamlouk_mall/Controller/auth/forgot_password_controller.dart';
import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customButton.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ForgotPasswordControllerImplement controller =
        Get.put(ForgotPasswordControllerImplement());
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
                  "Password Recovery",
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
                  "Enter your email to recover your password",
                  style: GoogleFonts.notoSansOlChiki(
                      fontWeight: FontWeight.bold,
                      fontSize: w * .04,
                      color: kGrey),
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
