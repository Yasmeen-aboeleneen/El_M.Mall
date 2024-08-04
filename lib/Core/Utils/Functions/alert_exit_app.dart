import 'dart:io';

import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "Alert",
      titleStyle: GoogleFonts.notoSansOlChiki(
          fontWeight: FontWeight.bold, fontSize: 15, color: kPrimary),
      middleText: "Do you want to exit app?",
      middleTextStyle: GoogleFonts.notoSansOlChiki(
          fontWeight: FontWeight.bold, fontSize: 14, color: kPrimary),
      actions: [
        ElevatedButton(
          onPressed: () {
            exit(0);
          },
          child: Text(
            "yes",
            style: GoogleFonts.notoSansOlChiki(
                fontWeight: FontWeight.bold, fontSize: 12, color: kPrimary),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text(
            "No",
            style: GoogleFonts.notoSansOlChiki(
                fontWeight: FontWeight.bold, fontSize: 12, color: kPrimary),
          ),
        )
      ]);
  return Future.value(true);
}
