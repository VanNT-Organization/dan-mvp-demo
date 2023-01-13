// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../configs/config.dart';
import '../../../../gen/assets.gen.dart';
import '../home/home_screen.dart';

class ClientProfileScreen extends StatelessWidget {
  const ClientProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppTheme.mainHorizEdge,
      child: Column(
        children: [
          const InfoHeader(),
          Box.h(10),
          TextButton(
            onPressed: () {
              AppNavigator.push(Routes.editProfileScreen);
            },
            child: Row(
              children: [
                Assets.images.edit.svg(),
                Box.w(12),
                Text('Edit', style: AppFont.t.s(16).black)
              ],
            ),
          ),
          const Divider(color: Palette.black),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Assets.images.globe.svg(),
                Box.w(12),
                Text('Language & Region', style: AppFont.t.s(16).black)
              ],
            ),
          ),
          const Divider(color: Palette.black),
          TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Assets.images.newMeasures.svg(),
                Box.w(12),
                Text('New measures', style: AppFont.t.s(16).black)
              ],
            ),
          ),
          const Divider(color: Palette.black),
          TextButton(
            onPressed: () {
              AppNavigator.pushNamedAndRemoveUntil(Routes.loginScreen);
            },
            child: Row(
              children: [
                Assets.images.logout.svg(),
                Box.w(12),
                Text('Logoff', style: AppFont.t.s(16).black)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
