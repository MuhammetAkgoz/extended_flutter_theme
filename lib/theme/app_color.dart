import 'package:flutter/material.dart';

@immutable
abstract class AppColors {
  /// Main
  static const primary = Colors.red;
  static const secondary = Colors.amber;

  /// Light
  static const lightBackground = Colors.white;
  static const lightPrimary2 = Color(0xffBC544B);
  static const lightPrimary3 = Color(0xff5E1916);
  static const lightSecondary2 = Color(0xffFDE992);
  static const lightSecondary3 = Color(0xffD8B863);

  /// Dark
  static const darkPrimary2 = Color(0xff063043);
  static const darkPrimary3 = Color(0xff6b0539);
  static const darkSecondary2 = Color(0xff1655ac);
  static const darkSecondary3 = Color(0xff547abc);
  static const darkBackground = Colors.black;
}
