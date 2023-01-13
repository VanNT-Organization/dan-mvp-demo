import 'package:flutter/material.dart';

import '../../configs/config.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    Key? key,
    this.width,
    required this.text,
    required this.action,
    this.color = Palette.blueLv2,
    this.height = 48,
    this.textStyle,
    this.elevation = 4,
  }) : super(key: key);

  final double? width;
  final String text;
  final GestureTapCallback action;
  final Color? color;
  final double? height;
  final TextStyle? textStyle;
  final double? elevation;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: action,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          elevation: elevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // <-- Radius
          ),
        ),
        child: Text(
          text,
          style: textStyle ?? AppFont.t.w500.s(21).white,
        ),
      ),
    );
  }
}
