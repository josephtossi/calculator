import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constant {
  static LinearGradient mainBackground = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xffefefef), Color(0xfff5f5f5)]);

  static LinearGradient mainBackgroundDark = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xff181818), Color(0xff121212)]);

  static LinearGradient dark = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xff0b0738), Color(0xff0c0a34)]);

  static LinearGradient splashBackground = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xffffffff),
        Color(0xffefefef),
        Color(0xfff5f5f5),
        Color(0xffc0c0c0)
      ]);

  static Color mainTextColor = const Color(0xffea7f24);

  static TextStyle textStyle = GoogleFonts.poppins(
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: const Color(0xffea7f24));
}
