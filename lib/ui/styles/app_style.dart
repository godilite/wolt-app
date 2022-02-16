import 'package:flutter/material.dart';

//Single source of truth for our styles
class AppColor {
  static const Color darkBlue = Color(0xFF303B5F);
  static const Color red = Color(0xFFFF6868);
  static const Color gray1 = Color(0xFF262734);
}

/// Class that holds custom [TextStyle]s.

class AppTextStyle {
  static TextStyle headline1 = const TextStyle(
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontSize: 30,
    height: 1.1,
  );

  static TextStyle body = const TextStyle(
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    fontSize: 16,
    height: 1.5,
  );
}
