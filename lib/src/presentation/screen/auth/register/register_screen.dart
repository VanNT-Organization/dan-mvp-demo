// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:mvp/src/gen/assets.gen.dart';
import 'package:mvp/src/presentation/widgets/export.dart';

import '../../../configs/config.dart';
import '../../../widgets/drop_down/drop_down.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  StateModel? selectState;
  List<StateModel> states = const [
    StateModel('State 1', '1'),
    StateModel('State 2', '2'),
    StateModel('State 3', '3')
  ];
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: const MyAppBar(title: 'Register'),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {},
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(40, 8, 12, 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Palette.grey),
                        borderRadius:
                            AppTheme.borderRadius(10)),
                    child: Row(mainAxisSize: MainAxisSize.min, children: [
                      Assets.images.cloud.svg(),
                      Box.w(8),
                      Text(
                        'Add your photo',
                        style: AppFont.t.s(12).w500.hint,
                      )
                    ]),
                  ),
                  Positioned(
                    left: 85.w,
                    child: Assets.images.person.image(
                      width: 43.h,
                      height: 43.h,
                    ),
                  ),
                ],
              ),
            ),
            Box.h(12),
            const MyTextFormField(
              title: 'Full Name',
            ),
            Box.h(12),
            const MyTextFormField(
              title: 'Email',
            ),
            Box.h(12),
            Row(
              children: [
                const Expanded(
                  child: MyTextFormField(
                    title: 'Document',
                  ),
                ),
                Box.w(8),
                const Expanded(
                  child: MyTextFormField(
                    title: 'CREP',
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
                ),
              ],
            ),
            Box.h(12),
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
                ),
              ],
            ),
            Box.h(20),
            ButtonPrimary(
              text: 'Next',
              action: () {
                AppNavigator.push(Routes.register2Screen);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class StateModel extends Equatable {
  final String name;
  final String value;

  const StateModel(this.name, this.value);

  @override
  List<Object> get props => [name, value];
}
