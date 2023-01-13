import 'package:flutter/material.dart';

import '../../configs/config.dart';


class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final String? subTitle;
  const MyAppBar({super.key, required this.title, this.subTitle})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  final Size preferredSize;
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          color: Palette.white,
        ),
      ),
      elevation: 0,
      backgroundColor: Palette.transparent,
      centerTitle: true,
      leading: InkWell(
          onTap: () => AppNavigator.pop(),
          child: const Icon(
            Icons.arrow_back,
            color: Palette.black,
          )),
      // backgroundColor: Theme.of(context).appBarTheme.copyWith(backgroundColor: ),
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.title,
            style: AppFont.t.s(24).w500.black,
          ),
          if (widget.subTitle != null)
            Text(
              widget.subTitle!,
              style: AppFont.t.s(13).black,
            ),
        ],
      ),
    );
  }
}
