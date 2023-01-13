import 'package:flutter/material.dart';

import 'config.dart';

extension ColorExtension on TextStyle {
  TextStyle get primary => copyWith(color: Palette.primary);
  TextStyle get white => copyWith(color: Palette.white);
  TextStyle get red => copyWith(color: Palette.red);
  TextStyle get success => copyWith(color: Palette.success);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle get black => copyWith(color: Palette.black);
  TextStyle get orange => copyWith(color: Palette.orange);
  TextStyle get hint => copyWith(color: Palette.hint);
  TextStyle get hintLv2 => copyWith(color: Palette.hintLv2);
  TextStyle get blue => copyWith(color: Palette.blue);
  TextStyle get blueLv2 => copyWith(color: Palette.blueLv2);
  TextStyle get blueLv3 => copyWith(color: Palette.blueLv3);
  TextStyle get greyLv2 => copyWith(color: Palette.greyLv2);
}

extension MyFontWeight on TextStyle {
  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
}

extension MyFontSize on TextStyle {
  TextStyle s([double size = 14]) => copyWith(fontSize: size.sp);
}

class AppFont {
  static TextStyle get t => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      );
}
