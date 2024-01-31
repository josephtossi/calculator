import 'package:flutter/material.dart';

/// Notes to keep ///
// https://stackoverflow.com/questions/61603856/flutter-boringssl-grpc-unable-to-install
// issue with

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

  static LinearGradient foodBorder = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xaaee2e28), Color(0xaaea7f24)]);

  static LinearGradient categoriesGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
      colors: [Color(0xffeaeaea), Color(0xffc6d1c1)]);

  static LinearGradient recipiesGradient = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xffee2e28), Color(0xfffdba3a)]);

  static LinearGradient ingredientsGradient = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xfff4f4f4), Color(0xfff4f4f4)]);

  static LinearGradient buttonColor = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [Color(0xffea7f24), Color(0xaaea7f24)]);

  static LinearGradient noBorder = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Colors.transparent, Colors.transparent]);

  static Color mainTextColor = const Color(0xffea7f24);
}
