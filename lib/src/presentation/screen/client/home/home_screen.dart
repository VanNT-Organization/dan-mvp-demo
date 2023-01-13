// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:mvp/src/presentation/configs/config.dart';
import 'package:mvp/src/utils/utils.dart';

import '../../../../gen/assets.gen.dart';
import '../../../widgets/export.dart';
import '../../chart/chart.dart';

class DayOfWeek extends Equatable {
  final DateTime day;
  final bool isToday;
  const DayOfWeek(this.day, this.isToday);

  @override
  List<Object> get props => [day, isToday];
}

class ClientHomeScreen extends StatefulWidget {
  const ClientHomeScreen({super.key});

  @override
  State<ClientHomeScreen> createState() => _ClientHomeScreenState();
}

class _ClientHomeScreenState extends State<ClientHomeScreen> {
  List<DayOfWeek> dayOfWeek = [];
  @override
  void initState() {
    super.initState();
    dayOfWeek = getDaysOfWeek();
    Logger.d('DAY OF WEEK', dayOfWeek);
  }

  List<DayOfWeek> getDaysOfWeek() {
    final now = DateTime.now();
    final startFrom = now.subtract(Duration(days: now.weekday));
    return List.generate(7, (i) => startFrom.add(Duration(days: i)))
        .map((e) => DayOfWeek(e, e.day == now.day))
        .toList();
  }

  Color buildColor(DateTime day) {
    final now = DateTime.now();
    if (day.isAfter(now)) {
      return Palette.greyLv2;
    } else {
      return Palette.blueLv3;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppTheme.mainHorizEdge,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const InfoHeader(),
            Box.h(20),
            Text('TODAY', style: AppFont.t.s(32).w800),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Palette.greyLv2,
                      borderRadius: AppTheme.borderRadius(15)),
                  child: Assets.images.bgHomeHeader.image(scale: 0.5),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Box.h(12),
                      Text('Stretching', style: AppFont.t.s(24).w800),
                      Box.h(8),
                      const MyRichText('Estimated', '30min'),
                      Box.h(24),
                      const MyRichText('Last', '21/06/2022 20:30h'),
                    ],
                  ),
                )
              ],
            ),
            Box.h(30),
            SizedBox(
              height: 80.h,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                  childAspectRatio: 1 / 1.35,
                ),
                children: dayOfWeek
                    .map((e) => Container(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                              color:
                                  e.isToday ? Palette.blueLv2 : buildColor(e.day),
                              borderRadius: AppTheme.borderRadius(15)),
                          child: Column(
                            children: [
                              Text(
                                DateFormat(DateFormat.WEEKDAY)
                                    .format(e.day)
                                    .substring(0, 3),
                                style: AppFont.t,
                              ),
                              Box.h(5),
                              Text(
                                e.day.day.toString(),
                                style: AppFont.t.s(20).w800,
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
            Text(
              'Trainning Time',
              style: AppFont.t.s(20).w500,
            ),
            const MyLineChart(),
            Box.h(30),
            Text('Your plan', style: AppFont.t.s(24).w800),
            Divider(
              indent: 50.w,
              color: Palette.black,
            ),
            Row(
              children: [
                Assets.images.person.image(scale: 0.5),
                Box.w(10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Caio Bocchi', style: AppFont.t.s(20).w700),
                          const Spacer(),
                          const StatusCircle(Status.active),
                        ],
                      ),
                      Text('R\$ 100,00/h', style: AppFont.t.w400),
                      Box.h(10),
                      const MyRichText('Next Payment', '25/06/22')
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InfoHeader extends StatelessWidget {
  final bool isEdit;
  const InfoHeader({
    Key? key,
    this.isEdit = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Fabricio Saciloto', style: AppFont.t.s(24).w600),
        if (isEdit) Box.w(10),
        if (isEdit) Assets.images.pen.svg(height: 20.h),
        const Spacer(),
        ClipOval(
          child: Container(
            child: Assets.images.avatar.image(),
          ),
        ),
        Box.w(25),
      ],
    );
  }
}
