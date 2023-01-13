// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mvp/src/gen/assets.gen.dart';
import 'package:mvp/src/presentation/widgets/export.dart';
import 'package:mvp/src/utils/extentions/extentions.dart';

import '../../../../../l10n/gen/app_localizations.dart';
import '../../../configs/config.dart';
import '../../../widgets/drop_down/drop_down.dart';

class Register2Screen extends StatefulWidget {
  const Register2Screen({super.key});

  @override
  State<Register2Screen> createState() => _Register2ScreenState();
}

class _Register2ScreenState extends State<Register2Screen> {
  String? selectGender;
  final List<String> genders = ["Male", "Female"];

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: MyAppBar(title: context.l10n.lbl_register,),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Assets.images.body.image(),
                Positioned(
                  right: 40,
                  child: Column(
                    children: [
                      Text(context.l10n.lbl_mmc, style: AppFont.t.s(20).w700),
                      Text('20', style: AppFont.t.s(20).w400),
                    ],
                  ),
                )
              ],
            ),
            Box.h(45),
            Row(
              children: [
                Expanded(
                  child: MyDropdown(
                    hintText: context.l10n.lbl_gender,
                    options: genders,
                    value: selectGender,
                    onChanged: (String? value) {
                      setState(() {
                        selectGender = value;
                      });
                    },
                    getLabel: (String value) => value,
                  ),
                ),
                Box.w(8),
                Expanded(
                  child: MyTextFormField(
                    title: context.l10n.lbl_weight,
                  ),
                ),
              ],
            ),
            Box.h(12),
            Row(
              children: [
                Expanded(
                  child: MyTextFormField(
                    title: context.l10n.lbl_zip_code,
                  ),
                ),
                Box.w(8),
                Expanded(
                  child: MyTextFormField(
                    title: context.l10n.lbl_state,
                  ),
                ),
              ],
            ),
            Box.h(12),
            MyTextFormField(
              title: context.l10n.lbl_objective,
            ),
            Box.h(20),
            ButtonPrimary(
              text: context.l10n.lbl_next,
              action: () {
                AppNavigator.push(Routes.register3Screen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
