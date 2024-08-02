import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:elmamlouk_mall/Core/Constants/colors.dart';

class CustomPasswordtextfield extends StatefulWidget {
  const CustomPasswordtextfield({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.textEditingController,
    required this.valid,
  }) : super(key: key);
  final String hintText;
  final String labelText;
  final TextEditingController textEditingController;
  final String? Function(String?) valid;

  @override
  State<CustomPasswordtextfield> createState() =>
      _CustomPasswordtextfieldState();
}

class _CustomPasswordtextfieldState extends State<CustomPasswordtextfield> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = false;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return;
      textFieldFocusNode.canRequestFocus = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        validator: widget.valid,
        controller: widget.textEditingController,
        obscureText: _obscured,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: GoogleFonts.notoSansOlChiki(
              fontWeight: FontWeight.bold, fontSize: w * .035, color: kGrey),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: Text(
            widget.labelText,
            style: GoogleFonts.notoSansOlChiki(
                fontWeight: FontWeight.bold, fontSize: w * .05, color: kGrey),
          ),
          suffixIcon: GestureDetector(
            onTap: _toggleObscured,
            child: Icon(
              _obscured
                  ? Icons.visibility_off_rounded
                  : Icons.visibility_rounded,
              size: 24,
              color: kGrey,
            ),
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
