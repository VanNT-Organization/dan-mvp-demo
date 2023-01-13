import 'package:flutter/material.dart';
import '../../configs/config.dart';


class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key, required this.child, this.appBar, this.bottom, this.padding});
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? bottom;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.background,
      child: SafeArea(
        child: Scaffold(
          appBar: appBar,
          backgroundColor: Palette.background,
          body: Padding(padding: padding ?? AppTheme.mainHorizEdge, child: child),
          bottomNavigationBar: bottom,
        ),
      ),
    );
  }
}

