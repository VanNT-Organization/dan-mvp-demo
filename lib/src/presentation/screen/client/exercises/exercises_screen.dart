import 'package:flutter/material.dart';
import '../../../configs/config.dart';
import '../../../widgets/export.dart';

import '../../../../gen/assets.gen.dart';

class ExercisesScreen extends StatelessWidget {
  const ExercisesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Stretching', style: AppFont.t.s(24).w800),
          Box.h(10),
          Text(
              'Warm up properly before exercising to prevent injury and make your workouts more effective.',
              style: AppFont.t.s(16).hintLv2),
          Box.h(15),
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    color: Palette.blueLv3,
                    borderRadius: AppTheme.borderRadius(5)),
                child: Row(
                  children: [
                    const Icon(Icons.access_time, color: Palette.blueLv2),
                    Box.w(14),
                    Text('30.00 mins', style: AppFont.t.s(16).w700.blueLv2),
                  ],
                ),
              ),
              Box.w(2),
              InkWell(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                      color: Palette.blueLv2,
                      borderRadius: AppTheme.borderRadius(5)),
                  child: Row(
                    children: [
                      const Icon(Icons.play_arrow_rounded,
                          color: Palette.white),
                      Box.w(14),
                      Text('Stretching', style: AppFont.t.s(16).w700.white),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 20),
              itemCount: 10,
              separatorBuilder: (_, i) => const Divider(color: Palette.black),
              itemBuilder: (_, i) => ItemExercise(
                onTap: () {
                  AppNavigator.push(Routes.detailExerciseScreen);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemExercise extends StatelessWidget {
  final VoidCallback? onTap;
  const ItemExercise({
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
              Box.h(4),
              Text(
                '02.30 Minutes',
                style: AppFont.t.w500,
              ),
            ],
          ),
        ),
        Box.w(20),
        InkWell(
          onTap: onTap,
          child: Container(
            height: 50.w,
            width: 50.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Palette.blueLv3),
            child: const Icon(
              Icons.play_arrow_rounded,
              color: Palette.blueLv2,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
