import 'package:flutter/material.dart';
import '../../../../gen/assets.gen.dart';
import '../../chart/chart.dart';
import '../../../widgets/status_circle/status_circle.dart';

import '../../../configs/config.dart';

class CoachHomeScreen extends StatelessWidget {
  const CoachHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: AppTheme.mainHorizEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Caio Bocchi', style: AppFont.t.s(24).w600),
                      Box.h(6),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const StatusCircle(Status.available),
                          Text('(distance 5km)', style: AppFont.t.s(10)),
                          Box.w(8),
                          Assets.images.pen.svg(),
                        ],
                      )
                    ],
                  ),
                ),
                ClipOval(
                  child: Container(
                    child: Assets.images.avatar.image(),
                  ),
                ),
              ],
            ),
            Box.h(30),
            Text('TODAY', style: AppFont.t.s(24).w800),
            Box.h(20),
            Row(
              children: [
                Text(
                  'Expired workouts',
                  style: AppFont.t.s(20).w800,
                ),
                Box.w(8),
                Assets.images.timeWarning.svg(),
              ],
            ),
            const Divider(color: Palette.black),
            Text(
              'Fabricio Saciloto',
              style: AppFont.t.w700,
            ),
            Box.h(4),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Assets.images.addCircle.svg(),
                  Box.w(8),
                  Text(
                    'Add new workout',
                    style: AppFont.t.w700.blueLv2,
                  ),
                ],
              ),
            ),
            Box.h(14),
            Text(
              'Murilo Campos',
              style: AppFont.t.w700,
            ),
            Box.h(4),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Assets.images.addCircle.svg(),
                  Box.w(8),
                  Text(
                    'Add new workout',
                    style: AppFont.t.w700.blueLv2,
                  ),
                ],
              ),
            ),
            Box.h(20),
            Row(
              children: [
                Text(
                  'Receivables',
                  style: AppFont.t.s(20).w800,
                ),
                Box.w(8),
                Assets.images.moneyBag.svg(),
              ],
            ),
            const Divider(color: Palette.black),
            Text(
              'Murilo Campos',
              style: AppFont.t.w800,
            ),
            Text(
              'R\$ 100,00',
              style: AppFont.t.w800.success,
            ),
            Box.h(30),
            Text(
              'Actives Clients',
              style: AppFont.t.s(20).w500,
            ),
            const MyLineChart(),
            Box.h(30),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Assets.images.email2.svg(),
                    Container(
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                      decoration: BoxDecoration(
                          color: Palette.blueLv3,
                          borderRadius: AppTheme.borderRadius(10)),
                      child: Text(
                        'Send Invite to new clients',
                        style: AppFont.t.s(20).w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Box.h(40),
          ],
        ),
      ),
    );
  }
}
