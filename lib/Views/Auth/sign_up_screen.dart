import 'package:elmamlouk_mall/Controller/auth/sign_up_controller.dart';
import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customButton.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customPassTextField.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customPhoneField.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpControllerImplement controller = Get.put(SignUpControllerImplement());
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: kveryWhite,
        appBar: AppBar(
          backgroundColor: kveryWhite,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Sign Up",
            style: GoogleFonts.notoSansOlChiki(
                fontWeight: FontWeight.bold, fontSize: w * .06, color: kGrey),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Center(
                child: Text(
                  "Create an account",
                  style: GoogleFonts.notoSansOlChiki(
                      fontWeight: FontWeight.bold,
                      fontSize: w * .07,
                      color: kPrimary),
                ),
              ),
              SizedBox(
                height: h * .08,
              ),
              Customtextfield(
                labelText: 'Username',
                hintText: 'Enter your username',
                iconData: Icons.person_outline_outlined,
                textEditingController: controller.userName,
              ),
              SizedBox(
                height: h * .035,
              ),
              Customtextfield(
                labelText: 'Email',
                hintText: 'Enter your email',
                iconData: Icons.mail_outline_outlined,
                textEditingController: controller.email,
              ),
              SizedBox(
                height: h * .035,
              ),
              CustomPhonetextfield(
                hintText: "Enter your phone number",
                labelText: "Phone Number",
                textEditingController: controller.phoneNumber,
              ),
              SizedBox(
                height: h * .035,
              ),
              CustomPasswordtextfield(
                hintText: "Enter your password",
                labelText: "Password",
                textEditingController: controller.password,
              ),
              SizedBox(
                height: h * .035,
              ),
              CustomButton(
                  title: "Sign Up",
                  onpressed: () {
                    controller.signUp();
                  }),
              SizedBox(
                height: h * .035,
              ),
              GestureDetector(
                onTap: () {
                  controller.goToLogin();
                },
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Text(
                    "Already have an account? Login",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSansOlChiki(
                        fontWeight: FontWeight.bold,
                        fontSize: w * .04,
                        color: kPrimary),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
