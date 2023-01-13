import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../../configs/config.dart';
import '../../../../gen/assets.gen.dart';
import '../../../widgets/export.dart';

import '../../../widgets/drop_down/drop_down.dart';

class WorkoutDefinitionsScreen extends StatefulWidget {
  const WorkoutDefinitionsScreen({super.key});

  @override
  State<WorkoutDefinitionsScreen> createState() =>
      _WorkoutDefinitionsScreenState();
}

class _WorkoutDefinitionsScreenState extends State<WorkoutDefinitionsScreen> {
  TypeModel? selectType;
  List<TypeModel> types = const [
    TypeModel('Type 1', '1'),
    TypeModel('Type 2', '2'),
    TypeModel('Type 3', '3')
  ];
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text('Workout Definitions', style: AppFont.t.s(20).w700),
                    Box.w(14),
                    Assets.images.editWorkout.svg()
                  ],
                ),
                const Divider(color: Palette.black),
                Box.h(20),
                const MyTextFormField(
                  title: 'Workout',
                ),
                Box.h(12),
                const MyTextFormField(
                  title: 'Description',
                ),
                Box.h(12),
                Row(
                  children: [
                    const Expanded(
                      child: MyTextFormField(
                        title: 'Estimated',
                      ),
                    ),
                    Box.w(8),
                    Expanded(
                      child: MyDropdown<TypeModel>(
                        hintText: "Type",
                        options: types,
                        value: selectType,
                        onChanged: (value) {
                          setState(() {
                            selectType = value!;
                          });
                        },
                        getLabel: (value) => value.name,
                      ),
                    ),
                  ],
                ),
                Box.h(30),
                Text('Add Exercise', style: AppFont.t.s(20).w700),
                const Divider(color: Palette.black),
                Box.h(20),
                Row(
                  children: [
                    const Expanded(
                      child: MyTextFormField(
                        title: 'Exercises',
                      ),
                    ),
                    Box.w(8),
                    const Expanded(
                      child: MyTextFormField(
                        title: 'Series',
                      ),
                    ),
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
                        title: 'Repet',
                      ),
                    ),
                    Box.w(8),
                    const Expanded(
                      child: MyTextFormField(
                        title: 'Break',
                      ),
                    ),
                  ],
                ),
                Box.h(8),
                Row(
                  children: [
                    MyCheckBox(
                      title: 'Per time',
                      onPress: (value) {},
                      isChecked: false,
                    ),
                    Box.w(12),
                    MyCheckBox(
                      title: 'Exhaustion',
                      onPress: (value) {},
                      isChecked: false,
                    ),
                    Box.w(12),
                    MyCheckBox(
                      title: 'Bi-set',
                      onPress: (value) {},
                      isChecked: false,
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Assets.images.addCircle.svg(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Box.h(15),
            Text('List Exercise', style: AppFont.t.s(20).w700),
            const Divider(color: Palette.black),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.only(bottom: 20),
                itemCount: 10,
                separatorBuilder: (_, i) => const Divider(color: Palette.black),
                itemBuilder: (_, i) => _ItemExercise(
                  onTap: () {
                    AppNavigator.push(Routes.detailExerciseScreen);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TypeModel extends Equatable {
  final String name;
  final String value;

  const TypeModel(this.name, this.value);

  @override
  List<Object> get props => [name, value];
}

class _ItemExercise extends StatelessWidget {
  final VoidCallback? onTap;
  const _ItemExercise({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Assets.images.exercise.image(),
        Box.w(20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Exercise 1 - Pulling forward shoulder stretch',
                style: AppFont.t.s(16).w700,
              ),
              Row(
                children: [
                  Text(
                    '02.30 Minutes',
                    style: AppFont.t.w500,
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Assets.images.pen.svg(height: 20),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Assets.images.bin.svg(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
