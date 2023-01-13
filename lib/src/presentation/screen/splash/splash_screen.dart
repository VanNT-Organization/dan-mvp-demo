import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../configs/config.dart';
import '../../widgets/export.dart';
import '../../../gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => AppNavigator.push(Routes.loginScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.images.logoSplash.svg(),
            Text(
              'TREINEI',
              style: GoogleFonts.khand(
                textStyle: AppFont.t.w700.s(75),
              ),
            )
          ],
        ),
      ),
    );
  }
}
