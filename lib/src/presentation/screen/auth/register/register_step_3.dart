import 'package:flutter/material.dart';
import 'package:mvp/src/utils/extentions/extentions.dart';
import '../../../../../l10n/gen/app_localizations.dart';
import '../../../../gen/assets.gen.dart';
import '../../../widgets/export.dart';

import '../../../configs/config.dart';

class Register3Screen extends StatelessWidget {
  const Register3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: MyAppBar(
        title: context.l10n.lbl_register,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 94.h,
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: Palette.grey),
                  borderRadius: AppTheme.borderRadius(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Assets.images.cloud.svg(),
                  Box.w(8),
                  Text(
                    context.l10n.lbl_add_video,
                    style: AppFont.t.s(12).w500.hint,
                  )
                ],
              ),
            ),
            Box.h(20),
            Row(
              children: [
                Text(
                  context.l10n.lbl_about_me,
                  style: AppFont.t.s(12).w700,
                ),
                Box.w(8),
                Assets.images.pen.svg()
              ],
            ),
            const Divider(color: Palette.black),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(0),
                hintText: context.l10n.lbl_your_des,
                hintStyle: AppFont.t.s(12).w700.greyLv2,
              ),
            ),
            Box.h(12),
            Row(
              children: [
                Text(
                  context.l10n.lbl_graduation,
                  style: AppFont.t.s(12).w700,
                ),
                Box.w(8),
                Assets.images.pen.svg()
              ],
            ),
            const Divider(color: Palette.black),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(0),
                hintText: context.l10n.lbl_your_training,
                hintStyle: AppFont.t.s(12).w700.greyLv2,
              ),
            ),
            Box.h(12),
            Row(
              children: [
                Text(
                  context.l10n.lbl_social_media,
                  style: AppFont.t.s(12).w700,
                ),
                Box.w(4),
                Text(
                  '+',
                  style: AppFont.t.s(16).w700.blueLv2,
                ),
              ],
            ),
            const Divider(color: Palette.black),
            TextFormField(
              maxLines: 4,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(0),
                hintText: context.l10n.lbl_your_training,
                hintStyle: AppFont.t.s(12).w700.greyLv2,
              ),
            ),
            Box.h(12),
            Text(
              context.l10n.lbl_price,
              style: AppFont.t.s(12).w700,
            ),
            const Divider(color: Palette.black),
            Box.h(10),
            Row(
              children: [
                Expanded(
                  child: MyTextFormField(
                    title: context.l10n.lbl_minimum,
                  ),
                ),
                Box.w(8),
                Expanded(
                  child: MyTextFormField(
                    title: context.l10n.lbl_maximum,
                  ),
                ),
              ],
            ),
            Box.h(12),
            Text(
              context.l10n.lbl_specialties,
              style: AppFont.t.s(12).w700,
            ),
            const Divider(color: Palette.black),
            Box.h(10),
            MyTextFormField(
              title: context.l10n.lbl_description,
            ),
            Box.h(20),
            ButtonPrimary(
              text: context.l10n.lbl_register,
              action: () {
                AppNavigator.push(Routes.registerSuccessScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
