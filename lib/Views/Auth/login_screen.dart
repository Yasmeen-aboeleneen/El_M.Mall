import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customPassTextField.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            "login".tr,
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
                  "Welcome Back",
                  style: GoogleFonts.notoSansOlChiki(
                      fontWeight: FontWeight.bold,
                      fontSize: w * .07,
                      color: kPrimary),
                ),
              ),
              SizedBox(
                height: h * .01,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "Login with your email and password\n or login with social media",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSansOlChiki(
                        fontWeight: FontWeight.bold,
                        fontSize: w * .04,
                        color: kGrey),
                  ),
                ),
              ),
              SizedBox(
                height: h * .055,
              ),
              const Customtextfield(
                labelText: 'Email',
                hintText: 'Enter your email',
              ),
              SizedBox(
                height: h * .035,
              ),
              const CustomPasswordtextfield(
                hintText: "Enter your password",
                labelText: "Password",
              )
            ],
          ),
        ));
  }
}
