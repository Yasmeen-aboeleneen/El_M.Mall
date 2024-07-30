import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Views/Home/home_screen.dart';
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
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
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
                height: h * .055,
              ),
              const Customtextfield(
                labelText: 'Username',
                hintText: 'Enter username',
              ),
              SizedBox(
                height: h * .035,
              ),
              const Customtextfield(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
              SizedBox(
                height: h * .035,
              ),
              const CustomPhonetextfield(
                  hintText: "Enter your phone number",
                  labelText: "Phone Number"),
              SizedBox(
                height: h * .035,
              ),
              const CustomPasswordtextfield(
                hintText: "Enter your password",
                labelText: "Password",
              ),
              SizedBox(
                height: h * .035,
              ),
              CustomButton(
                  title: "Sign Up",
                  onpressed: () {
                    Get.to(() => const HomeScreen());
                  })
            ],
          ),
        ));
  }
}
