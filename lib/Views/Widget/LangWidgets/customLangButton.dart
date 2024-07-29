// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:elmamlouk_mall/Core/Constants/colors.dart';

class Customlangbutton extends StatelessWidget {
   Customlangbutton({
    Key? key,
    required this.title,
    required this.onpressed,
  }) : super(key: key);
  final String title;
  final void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12),
      width: w,
      child: MaterialButton(
          color: kPrimary,
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(30)),
          splashColor: kPrimary2,
          elevation: 2,
          onPressed: onpressed,
          child: Text(
            title,
            style: GoogleFonts.notoSansOldNorthArabian(
                fontWeight: FontWeight.bold,
                fontSize: w * .05,
                color: kveryWhite),
          )),
    );
  }
}
