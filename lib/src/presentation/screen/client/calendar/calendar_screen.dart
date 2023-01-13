import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:intl/intl.dart';
import '../../../configs/config.dart';
import '../../../../gen/assets.gen.dart';

class ClientCalendarScreen extends StatefulWidget {
  const ClientCalendarScreen({super.key});

  @override
  State<ClientCalendarScreen> createState() => _ClientCalendarScreenState();
}

class _ClientCalendarScreenState extends State<ClientCalendarScreen> {

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Stretching - Caio Bocchi',
              style: AppFont.t.s(15).w800,
            ),
            const Divider(color: Palette.black),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (_, i) => Box.h(10),
                itemBuilder: (_, i) => const _ItemExercise(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemExercise extends StatelessWidget {
  const _ItemExercise({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Exercise 1 - Pulling forward shoulder stretch',
          style: AppFont.t.s(12).w700,
        ),
        Box.h(10),
        Text(
          'Serie 1',
          style: AppFont.t.s(12).w700,
        ),
        Text(
          'Weight: 12 (Sug. 10kg)',
          style: AppFont.t.s(12),
        ),
        Text(
          'Repetitions: 12 (Sug. 12)',
          style: AppFont.t.s(12),
        ),
      ],
    );
  }
}
