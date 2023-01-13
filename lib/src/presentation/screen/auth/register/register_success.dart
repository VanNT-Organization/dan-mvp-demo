import 'package:flutter/material.dart';
import '../../../widgets/export.dart';

import '../../../configs/config.dart';
import '../../../../gen/assets.gen.dart';

class RegisterSuccessScreen extends StatelessWidget {
  const RegisterSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Assets.images.success.svg(),
          Box.h(50),
          Text(
            'Registration successfully Complete',
            style: AppFont.t.s(20).w700,
            textAlign: TextAlign.center,
          ),
          Box.h(50),
          Assets.images.email.svg(),
          Box.h(50),
          Text(
            'A confirmation link was sent to your email',
            style: AppFont.t.s(24).w500,
            textAlign: TextAlign.center,
          ),
          Box.h(50),
          TextButton(
            onPressed: () {
              AppNavigator.pushNamedAndRemoveUntil(Routes.loginScreen);
            },
            child: Text(
              'Go to login',
              style: AppFont.t.s(24).w700.blueLv2,
              textAlign: TextAlign.center,
            ),
          ),
          Box.h(42),
        ],
      ),
    );
  }
}
