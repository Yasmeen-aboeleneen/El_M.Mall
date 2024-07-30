import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:elmamlouk_mall/Core/Constants/colors.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({
    Key? key,
    required this.hintText,
    required this.labelText,
  }) : super(key: key);
  final String hintText;
  final String labelText;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.notoSansOlChiki(
              fontWeight: FontWeight.bold, fontSize: w * .035, color: kGrey),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Text(
            labelText,
            style: GoogleFonts.notoSansOlChiki(
                fontWeight: FontWeight.bold, fontSize: w * .05, color: kGrey),
          ),
          suffixIcon: const Icon(
            Icons.mail_outline_rounded,
            color: kGrey,
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: kPrimary, width: w * .006)),
        ),
        cursorColor: kPrimary,
      ),
    );
  }
}
