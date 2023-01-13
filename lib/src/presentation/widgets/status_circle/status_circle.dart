import 'package:flutter/material.dart';
import '../../configs/config.dart';

enum Status { active, inactive, overdue , available}

class StatusCircle extends StatelessWidget {
  final Status status;
  final bool showStatusName;
  const StatusCircle(this.status, {super.key, this.showStatusName = true});

  Color? buildColor() {
    switch (status) {
      case Status.active:
      case Status.available:
        return Palette.success;
      case Status.inactive:
        return Palette.red;
      case Status.overdue:
        return Palette.yellow;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 16.h,
          width: 16.h,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: buildColor()),
        ),
        Box.w(5),
        if (showStatusName)
          Text(
            status.name.toUpperCase(),
            style: AppFont.t.s(12).w800,
          )
      ],
    );
  }
}
