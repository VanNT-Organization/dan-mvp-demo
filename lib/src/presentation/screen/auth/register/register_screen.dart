// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:mvp/src/gen/assets.gen.dart';
import 'package:mvp/src/presentation/widgets/export.dart';
import 'package:mvp/src/utils/extentions/extentions.dart';

import '../../../../../l10n/gen/app_localizations.dart';
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
      appBar: MyAppBar(title: context.l10n.lbl_register),
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
                        context.l10n.lbl_add_photo,
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
            MyTextFormField(
              title: context.l10n.lbl_full_name,
            ),
            Box.h(12),
            MyTextFormField(
              title: context.l10n.lbl_full_email,
            ),
            Box.h(12),
            Row(
              children: [
                Expanded(
                  child: MyTextFormField(
                    title: context.l10n.lbl_document,
                  ),
                ),
                Box.w(8),
                Expanded(
                  child: MyTextFormField(
                    title: context.l10n.lbl_crep,
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
                  child: MyDropdown<StateModel>(
                    hintText: context.l10n.lbl_state,
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
            MyTextFormField(
              title: context.l10n.lbl_city,
            ),
            Box.h(12),
            MyTextFormField(
              title: context.l10n.lbl_street,
            ),
            Box.h(12),
            Row(
              children: [
                Expanded(
                  child: MyTextFormField(
                    title: context.l10n.lbl_number,
                  ),
                ),
                Box.w(8),
                Expanded(
                  child: MyTextFormField(
                    title: context.l10n.lbl_complement,
                  ),
                ),
              ],
            ),
            Box.h(12),
            Row(
              children: [
                Expanded(
                  child: MyTextFormField(
                    title: context.l10n.lbl_ddd,
                  ),
                ),
                Box.w(8),
                Expanded(
                  child: MyTextFormField(
                    title: context.l10n.lbl_telephone,
                  ),
                ),
              ],
            ),
            Box.h(20),
            ButtonPrimary(
              text: context.l10n.lbl_next,
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
