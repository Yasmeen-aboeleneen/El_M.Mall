import 'package:elmamlouk_mall/Controller/auth/login_controller.dart';
import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:elmamlouk_mall/Core/Constants/images.dart';
import 'package:elmamlouk_mall/Views/Home/home_screen.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customButton.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customPassTextField.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customRaw.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/customTextField.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/dividers.dart';
import 'package:elmamlouk_mall/Views/Widget/AuthWidgets/socialMedia_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImplement controller = Get.put(LoginControllerImplement());
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: kveryWhite,
        appBar: AppBar(
          backgroundColor: kveryWhite,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Login",
            style: GoogleFonts.notoSansOlChiki(
                fontWeight: FontWeight.bold, fontSize: w * .06, color: kGrey),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(
                height: h * .01,
              ),
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
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    "Login with your email and password\n or login with social media",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSansOlChiki(
                        fontWeight: FontWeight.w500,
                        fontSize: w * .04,
                        color: kGrey),
                  ),
                ),
              ),
              SizedBox(
                height: h * .07,
              ),
              Customtextfield(
                labelText: 'Email',
                hintText: 'Enter your email',
                iconData: Icons.email,
                textEditingController: controller.email,
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
                height: h * .02,
              ),
              const CustomRaw(),
              SizedBox(
                height: h * .02,
              ),
              CustomButton(
                  title: "Login",
                  onpressed: () {
                    Get.to(() => const HomeScreen());
                  }),
              SizedBox(
                height: h * .02,
              ),
              GestureDetector(
                onTap: () {
                  controller.goToSignUp();
                },
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    "Don't have an account? SignUp",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.notoSansOlChiki(
                        fontWeight: FontWeight.bold,
                        fontSize: w * .04,
                        color: kPrimary),
                  ),
                ),
              ),
              SizedBox(
                height: h * .02,
              ),
              const Dividers(),
              SizedBox(
                height: h * .02,
              ),
              const Row(
                children: [
                  SocialmediaRow(image: Images.google, text: "Google"),
                  SocialmediaRow(image: Images.facebook, text: "Facebook"),
                ],
              )
            ],
          ),
        ));
  }
}
