import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';
import '../../../configs/config.dart';
import '../../../../gen/assets.gen.dart';

class CoachCalendarScreen extends StatefulWidget {
  const CoachCalendarScreen({super.key});

  @override
  State<CoachCalendarScreen> createState() => _CoachCalendarScreenState();
}

class _CoachCalendarScreenState extends State<CoachCalendarScreen> {
  Color buildColor(DateTime day) {
    final now = DateTime.now();
    if (day.day == now.day) {
      return Palette.blueLv2;
    } else {
      return Palette.blueLv3;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppTheme.mainHorizEdge,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverToBoxAdapter(
            child: CalendarCarousel<Event>(
              pageSnapping: true,
              onDayPressed: null,
              showWeekDays: false,
              thisMonthDayBorderColor: Colors.grey,
              //      weekDays: null, /// for pass null when you do not want to render weekDays
              //      headerText: Container( /// Example for rendering custom header
              //        child: Text('Custom Header'),
              //      ),
              childAspectRatio: 1.2 / 1.8,
              customDayBuilder: (
                /// you can provide your own build function to make custom day containers
                bool isSelectable,
                int index,
                bool isSelectedDay,
                bool isToday,
                bool isPrevMonthDay,
                TextStyle textStyle,
                bool isNextMonthDay,
                bool isThisMonthDay,
                DateTime day,
              ) {
                /// If you return null, [CalendarCarousel] will build container for current [day] with default function.
                /// This way you can build custom containers for specific days only, leaving rest as default.

                // Example: every 15th of month, we have a flight, we can place an icon in the container like that:

                return Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: buildColor(day),
                    borderRadius: AppTheme.borderRadius(20),
                  ),
                  child: Center(
                      child: Column(
                    children: [
                      Text(
                        DateFormat(DateFormat.WEEKDAY)
                            .format(day)
                            .substring(0, 3),
                        style: AppFont.t.black,
                      ),
                      Box.h(5),
                      Text(
                        '${day.day}',
                        style: AppFont.t.s(20).w800.black,
                      ),
                    ],
                  )),
                );
              },
              selectedDayButtonColor: Palette.transparent,
              todayButtonColor: Palette.transparent,
              dayButtonColor: Palette.transparent,
              weekFormat: false,
              height: 550.h,
              daysHaveCircularBorder: null,
              leftButtonIcon: Assets.images.arrowLeft.svg(),
              rightButtonIcon: Assets.images.arrowRight.svg(),
              headerTextStyle: AppFont.t.s(24).w800.black,
              headerMargin: const EdgeInsets.all(30),
              showOnlyCurrentMonthDate: true,

              /// null for not rendering any border, true for circular border, false for rectangular border
            ),
          )
        ],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Text(
                    'Expired workouts',
                    style: AppFont.t.s(15).w800,
                  ),
                  Box.w(8),
                  Assets.images.timeWarning.svg(),
                ],
              ),
              const Divider(color: Palette.black),
              Text(
                'Fabricio Saciloto',
                style: AppFont.t.s(12).w700,
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
                      style: AppFont.t.s(14).w700.blueLv2,
                    ),
                  ],
                ),
              ),
              Box.h(14),
              Text(
                'Murilo Campos',
                style: AppFont.t.s(12).w700,
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
                      style: AppFont.t.s(14).w700.blueLv2,
                    ),
                  ],
                ),
              ),
              Box.h(20),
              Row(
                children: [
                  Text(
                    'Receivables',
                    style: AppFont.t.s(15).w800,
                  ),
                  Box.w(8),
                  Assets.images.moneyBag.svg(),
                ],
              ),
              const Divider(color: Palette.black),
              Text(
                'Murilo Campos',
                style: AppFont.t.s(12).w800,
              ),
              Text(
                'R\$ 100,00',
                style: AppFont.t.s(12).w800.success,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
