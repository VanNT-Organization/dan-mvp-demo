import 'package:flutter/material.dart';
import '../../screen.dart';
import '../../../../gen/assets.gen.dart';
import '../../../widgets/export.dart';

import '../../../configs/config.dart';

class DetailExerciseScreen extends StatelessWidget {
  const DetailExerciseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Assets.images.exercise2.image(fit: BoxFit.cover),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 50.w,
                  width: 50.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xffF8F7F7).withOpacity(0.6)),
                  child: const Icon(
                    Icons.play_arrow_rounded,
                    color: Palette.black,
                    size: 40,
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: AppTheme.mainHorizEdge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Box.h(20),
                  Text(
                    'Exercise 6 -  Pulling forward shoulder stretch',
                    style: AppFont.t.s(16).w800,
                    textAlign: TextAlign.center,
                  ),
                  Box.h(20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Series',
                              style: AppFont.t.s(16).w700,
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '1/3',
                              style: AppFont.t.s(48).w700,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Box.w(20),
                      Expanded(
                          child: Column(
                        children: [
                          const MyTextFormField(
                            title: 'Repet',
                          ),
                          Box.h(4),
                          Text(
                            'Suggestion\n12',
                            style: AppFont.t.s(15).w700,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                      Box.w(20),
                      Expanded(
                          child: Column(
                        children: [
                          const MyTextFormField(
                            title: 'Weight',
                          ),
                          Box.h(4),
                          Text(
                            'Suggestion\n20kg',
                            style: AppFont.t.s(15).w700,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                          color: Palette.blueLv3,
                          borderRadius: AppTheme.borderRadius(5)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Assets.images.running.svg(),
                          Box.w(14),
                          Text('SKIP', style: AppFont.t.s(16).w700),
                        ],
                      ),
                    ),
                  ),
                  Box.h(8),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                              color: Palette.blueLv2,
                              borderRadius: AppTheme.borderRadius(5)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('30.00 secs', style: AppFont.t.s(16).w700),
                              const Spacer(),
                              const Icon(Icons.access_time),
                              Box.w(14),
                              Text('Break', style: AppFont.t.s(16).w700),
                            ],
                          ),
                        ),
                      ),
                      Box.w(10),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 16),
                          decoration: BoxDecoration(
                              color: Palette.blueLv3,
                              borderRadius: AppTheme.borderRadius(5)),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.check),
                              Box.w(14),
                              Text('Done', style: AppFont.t.s(16).w700),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Box.h(12),
                  Text(
                    'Exercises',
                    style: AppFont.t.s(16).w700,
                    textAlign: TextAlign.center,
                  ),
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      itemCount: 10,
                      separatorBuilder: (_, i) =>
                          const Divider(color: Palette.black),
                      itemBuilder: (_, i) => const ItemExercise(),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
