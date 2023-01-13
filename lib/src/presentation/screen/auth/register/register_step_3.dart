import 'package:flutter/material.dart';
import '../../../../gen/assets.gen.dart';
import '../../../widgets/export.dart';

import '../../../configs/config.dart';

class Register3Screen extends StatelessWidget {
  const Register3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: const MyAppBar(title: 'Register'),
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
                    'Add your video',
                    style: AppFont.t.s(12).w500.hint,
                  )
                ],
              ),
            ),
            Box.h(20),
            Row(
              children: [
                Text(
                  'About me',
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
                hintText: 'Add your description',
                hintStyle: AppFont.t.s(12).w700.greyLv2,
              ),
            ),
            Box.h(12),
            Row(
              children: [
                Text(
                  'Graduation',
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
                hintText: 'Add your training and courses',
                hintStyle: AppFont.t.s(12).w700.greyLv2,
              ),
            ),
            Box.h(12),
            Row(
              children: [
                Text(
                  'Social media',
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
                hintText: 'Add your training and courses',
                hintStyle: AppFont.t.s(12).w700.greyLv2,
              ),
            ),
            Box.h(12),
            Text(
              'Price per hour',
              style: AppFont.t.s(12).w700,
            ),
            const Divider(color: Palette.black),
            Box.h(10),
            Row(
              children: [
                const Expanded(
                  child: MyTextFormField(
                    title: 'Minimum',
                  ),
                ),
                Box.w(8),
                const Expanded(
                  child: MyTextFormField(
                    title: 'Maximum',
                  ),
                ),
              ],
            ),
            Box.h(12),
            Text(
              'Specialties',
              style: AppFont.t.s(12).w700,
            ),
            const Divider(color: Palette.black),
            Box.h(10),
            const MyTextFormField(
              title: 'Description',
            ),
            Box.h(20),
            ButtonPrimary(
              text: 'Register',
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
