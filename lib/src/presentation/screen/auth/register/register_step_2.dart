// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mvp/src/gen/assets.gen.dart';
import 'package:mvp/src/presentation/widgets/export.dart';

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
      appBar: const MyAppBar(title: 'Register'),
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
                      Text('MMC', style: AppFont.t.s(20).w700),
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
                    hintText: "Gender",
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
                const Expanded(
                  child: MyTextFormField(
                    title: 'Weight',
                  ),
                ),
              ],
            ),
            Box.h(12),
            Row(
              children: [
                const Expanded(
                  child: MyTextFormField(
                    title: 'Zip Code',
                  ),
                ),
                Box.w(8),
                const Expanded(
                  child: MyTextFormField(
                    title: 'State',
                  ),
                ),
              ],
            ),
            Box.h(12),
            const MyTextFormField(
              title: 'Objective',
            ),
            Box.h(20),
            ButtonPrimary(
              text: 'Next',
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
