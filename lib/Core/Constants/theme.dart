import 'package:elmamlouk_mall/Core/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData englishTheme = ThemeData(
  fontFamily: "notoSansOlChiki",
  textTheme: TextTheme(
    headlineLarge: GoogleFonts.notoSansOlChiki(
        fontWeight: FontWeight.bold, fontSize: 20, color: kPrimary),
    headlineMedium: GoogleFonts.notoSansOlChiki(
        fontWeight: FontWeight.bold, fontSize: 10, color: kPrimary),
  ),
);

ThemeData arabicTheme = ThemeData(
    fontFamily: "notoSansOlChiki",
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.notoSansArabic(
          fontWeight: FontWeight.bold, fontSize: 20, color: kPrimary),
      headlineMedium: GoogleFonts.notoSansArabic(
        fontWeight: FontWeight.bold,
        fontSize: 10,
        color: kPrimary,
      ),
    ));
