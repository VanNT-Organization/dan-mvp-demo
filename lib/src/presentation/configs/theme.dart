import 'package:flutter/material.dart';
import 'config.dart';

class AppTheme {
  static const EdgeInsets mainHorizEdge = EdgeInsets.symmetric(horizontal: 20);
  static InputDecorationTheme textFormField([double radius = 10]) =>
      InputDecorationTheme(
        hintStyle: AppFont.t.s().w400.hint,
        focusColor: Palette.blue,
        labelStyle: AppFont.t.s(15),
        errorMaxLines: 2,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(
            color: Palette.grey,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(
            color: Palette.grey,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(color: Palette.red),
        ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(radius),
        //   borderSide: const BorderSide(
        //     color: Palette.grey,
        //   ),
        // ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: const BorderSide(
            color: Palette.grey,
          ),
        ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(radius),
        //   borderSide: const BorderSide(
        //     color: Palette.grey,
        //   ),
        // ),
      );

  static BorderRadiusGeometry borderRadius(double radius) =>
      BorderRadius.all(Radius.circular(radius));
}
