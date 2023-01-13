import 'package:flutter/material.dart';
import '../../configs/palette.dart';

import '../../configs/app_font.dart';

class MyRichText extends StatelessWidget {
  final String t1;
  final String t2;
  final Color? color;
  const MyRichText(this.t1, this.t2, {super.key, this.color});
  const MyRichText.grey(this.t1, this.t2, {super.key, this.color = Palette.hintLv2});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: '$t1: ', style: AppFont.t.w800.copyWith(color: color)),
          TextSpan(text: t2, style: AppFont.t.w500.copyWith(color: color)),
        ],
      ),
    );
  }
}
