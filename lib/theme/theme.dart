import 'package:flutter/material.dart';

class ThemeContainer {
  static ThemeData dark = ThemeData.dark()
      .copyWith(scaffoldBackgroundColor: Color(0xff1e1e1e));
  static ThemeData light = ThemeData.light()
    ..copyWith(scaffoldBackgroundColor: Color(0xffFFFFFF));
}
