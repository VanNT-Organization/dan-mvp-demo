import 'package:flutter/material.dart';
import '../../../widgets/export.dart';

import '../../../configs/config.dart';
import '../../../../gen/assets.gen.dart';
import '../../../widgets/drop_down/drop_down.dart';
import '../home/home_screen.dart';
import '../../auth/register/register_screen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  StateModel? selectState;
  List<StateModel> states = const [
    StateModel('State 1', '1'),
    StateModel('State 2', '2'),
    StateModel('State 3', '3')
  ];
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const InfoHeader(isEdit: true),
            Box.h(20),
            Row(
              children: [
                const Expanded(
                  child: MyTextFormField(
                    title: 'DDD',
                  ),
                ),
                Box.w(8),
                const Expanded(
                  child: MyTextFormField(
                    title: 'Telephone',
                  ),
                )
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
                Expanded(
                  child: MyDropdown<StateModel>(
                    hintText: "State",
                    options: states,
                    value: selectState,
                    onChanged: (value) {
                      setState(() {
                        selectState = value!;
                      });
                    },
                    getLabel: (value) => value.name,
                  ),
                ),
              ],
            ),
            Box.h(12),
            const MyTextFormField(
              title: 'City',
            ),
            Box.h(12),
            const MyTextFormField(
              title: 'Street',
            ),
            Box.h(12),
            Row(
              children: [
                const Expanded(
                  child: MyTextFormField(
                    title: 'Number',
                  ),
                ),
                Box.w(8),
                const Expanded(
                  child: MyTextFormField(
                    title: 'Complement',
                  ),
                )
              ],
            ),
            Box.h(12),
            Stack(
              alignment: Alignment.center,
              children: [
                Assets.images.body.image(height: 150),
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
            Box.h(12),
            Row(
              children: [
                const Expanded(
                  child: MyTextFormField(
                    title: 'Weight',
                  ),
                ),
                Box.w(8),
                const Expanded(
                  child: MyTextFormField(
                    title: 'Height',
                  ),
                )
              ],
            ),
            Box.h(12),
            const MyTextFormField(
              title: 'Objective',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ButtonPrimary(text: 'Confirm', action: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
