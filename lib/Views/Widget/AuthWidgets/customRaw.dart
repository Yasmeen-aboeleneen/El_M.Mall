import 'package:elmamlouk_mall/Controller/auth/login_controller.dart';
import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRaw extends StatefulWidget {
  const CustomRaw({super.key});

  @override
  State<CustomRaw> createState() => _CustomRawState();
}

class _CustomRawState extends State<CustomRaw> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    LoginControllerImplement controller = Get.put(LoginControllerImplement());
    var w = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Checkbox(
              checkColor: Colors.white,
              activeColor: kPrimary,
              value: isCheck,
              onChanged: (newValue) {
                setState(() {
                  isCheck = newValue;
                });
              }),
          //  const      SizedBox(
          //     width: 1,
          //   ),
          Expanded(
              child: RichText(
                  text: TextSpan(children: [
            TextSpan(
              text: 'Remember me',
              style: TextStyle(
                  color: kPrimary,
                  fontSize: w * .04,
                  fontWeight: FontWeight.bold),
            ),
          ]))),

          GestureDetector(
              onTap: () {
                controller.goToForgotPasswordScreen();
              },
              child: Text(
                "Forgot Password ?",
                style: GoogleFonts.notoSansOlChiki(
                    fontWeight: FontWeight.bold,
                    fontSize: w * .04,
                    color: kPrimary,
                    decoration: TextDecoration.underline,
                    decorationColor: kPrimary),
              )),
        ],
      ),
    );
  }
}
