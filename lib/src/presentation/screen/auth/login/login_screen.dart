import 'package:flutter/material.dart';
import 'package:mvp/src/utils/utils.dart';
import '../../../../../l10n/gen/app_localizations.dart';
import '../../main/main_screen.dart';
import '../../../../gen/assets.gen.dart';
import '../../../widgets/export.dart';

import '../../../configs/config.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController userNameCtl;
  late TextEditingController passwordCtl;

  @override
  void initState() {
    super.initState();
    userNameCtl = TextEditingController();
    passwordCtl = TextEditingController();
  }

  @override
  void dispose() {
    userNameCtl.dispose();
    passwordCtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Box.h(50),
            Text(
              context.l10n.lbl_sign_in,
              style: AppFont.t.s(36).w700.blueLv2,
            ),
            Box.h(26),
            Text(
             context.l10n.lbl_input_account_guide,
              style: AppFont.t.s(12).w700,
            ),
            Box.h(26),
            MyTextFormField(
              title:context.l10n.lbl_user_name,
              controller: userNameCtl,
            ),
            Box.h(26),
            MyTextFormField(
              title:context.l10n.lbl_password,
              controller: passwordCtl,
            ),
            Box.h(26),
            ButtonPrimary(
              text:context.l10n.lbl_sign_in,
              action: () {

              },
            ),
            Box.h(8),
            InkWell(
              onTap: () {},
              child: Text(
               context.l10n.lbl_forgot_pass,
                style: AppFont.t.s(14).w500.blueLv2.underline,
              ),
            ),
            Box.h(32),
            InkWell(
              onTap: () {},
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                    color: Palette.black,
                    borderRadius: AppTheme.borderRadius(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.appleLogo.svg(color: Palette.white),
                    Box.w(10),
                    Text(
                     context.l10n.lbl_sign_up_apple,
                      style: AppFont.t.s(21).w500.white,
                    )
                  ],
                ),
              ),
            ),
            Box.h(10),
            InkWell(
              onTap: () {},
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                    color: const Color(0xff4267b2),
                    borderRadius: AppTheme.borderRadius(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.facebookLogo.image(),
                    Box.w(10),
                    Text(
                     context.l10n.lbl_sign_in_facebook,
                      style: AppFont.t.s(21).w500.white,
                    )
                  ],
                ),
              ),
            ),
            Box.h(28),
            Text(
             context.l10n.lbl_new_customer,
              style: AppFont.t.s(24).w700.blueLv2,
            ),
            Box.h(36),
            ButtonPrimary(
              text:context.l10n.lbl_register,
              color: Palette.blueLv3,
              textStyle: AppFont.t.s(21).w500.blueLv2,
              action: () {
                AppNavigator.push(Routes.registerScreen);
              },
            ),
            Box.h(20),
          ],
        ),
      ),
    );
  }
}
