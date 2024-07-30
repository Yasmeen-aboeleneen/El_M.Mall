import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, required this.onpressed});
  final String title;
  final void Function() onpressed;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 80,
      ),
      child: MaterialButton(
        height: h * .06,
        color: kPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: onpressed,
        child: Text(
          title,
          style: GoogleFonts.notoSansOlChiki(
              fontWeight: FontWeight.bold,
              fontSize: w * .05,
              color: kveryWhite),
        ),
      ),
    );
  }
}
