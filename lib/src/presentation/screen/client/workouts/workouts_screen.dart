// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:mvp/src/presentation/widgets/export.dart';

import '../../../configs/config.dart';

class ClientWorkoutsScreen extends StatefulWidget {
  const ClientWorkoutsScreen({super.key});

  @override
  State<ClientWorkoutsScreen> createState() => _ClientWorkoutsScreenState();
}

class _ClientWorkoutsScreenState extends State<ClientWorkoutsScreen> {
  List<WorkoutModel> workouts = const [
    WorkoutModel(
      name: 'Stretching',
      desc: 'Caio Bocchi',
      est: '30min',
      status: WorkoutStatus.done,
      next: '24/06/2022',
      last: '20/06/2022 20:30h',
    ),
    WorkoutModel(
      name: 'Running',
      desc: 'Caio Bocchi',
      est: '30min',
      status: WorkoutStatus.error,
      next: '24/06/2022',
      last: '20/06/2022 20:30h',
    ),
    WorkoutModel(
      name: 'Leggs',
      desc: 'Caio Bocchi',
      est: '30min',
      status: WorkoutStatus.process,
      next: '24/06/2022',
      last: '20/06/2022 20:30h',
    ),
    WorkoutModel(
      name: 'Back & Shoulder',
      desc: 'Caio Bocchi',
      est: '30min',
      status: WorkoutStatus.skip,
      next: '24/06/2022',
      last: '20/06/2022 20:30h',
    ),
    WorkoutModel(
      name: 'Stretching',
      desc: 'Caio Bocchi',
      est: '30min',
      status: WorkoutStatus.done,
      next: '24/06/2022',
      last: '20/06/2022 20:30h',
    ),
    WorkoutModel(
      name: 'Stretching',
      desc: 'Caio Bocchi',
      est: '30min',
      status: WorkoutStatus.done,
      next: '24/06/2022',
      last: '20/06/2022 20:30h',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text('Workouts', style: AppFont.t.s(24).w800),
          ),
          Box.h(20),
          const Divider(
            color: Palette.black,
            height: 1,
            thickness: 1,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: workouts.length,
              separatorBuilder: (_, i) => const Divider(
                color: Palette.black,
                height: 1,
                thickness: 1,
              ),
              itemBuilder: (_, i) => ItemWorkout(workout: workouts[i]),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemWorkout extends StatelessWidget {
  final WorkoutModel workout;
  const ItemWorkout({Key? key, required this.workout}) : super(key: key);

  Color? buildColor() {
    switch (workout.status) {
      case WorkoutStatus.done:
        return Palette.success;
      case WorkoutStatus.error:
        return Palette.red;
      case WorkoutStatus.process:
        return Palette.yellow;
      case WorkoutStatus.skip:
        return Palette.greyLv2;

      default:
        return null;
    }
  }

  IconData? buildIcon() {
    switch (workout.status) {
      case WorkoutStatus.done:
        return Icons.check;
      case WorkoutStatus.error:
        return Icons.error_outline;
      case WorkoutStatus.process:
        return Icons.access_time_filled_outlined;
      case WorkoutStatus.skip:
        return Icons.skip_next;

      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppNavigator.push(Routes.exercisesScreen);
      },
      child: IntrinsicHeight(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Box.h(8),
                    Text(workout.name, style: AppFont.t.s(24).w800),
                    Text(workout.desc, style: AppFont.t.s(11).w800),
                    Box.h(20),
                    MyRichText('Estimated', workout.est),
                    Box.h(4),
                    MyRichText('Next', workout.next),
                    Box.h(4),
                    MyRichText('Last', workout.last),
                    Box.h(8),
                  ],
                ),
              ),
              Container(
                width: 50.w,
                decoration: BoxDecoration(color: buildColor()),
                child: Icon(
                  buildIcon(),
                  color: Palette.white,
                  size: 46,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum WorkoutStatus { done, error, process, skip }

class WorkoutModel extends Equatable {
  final String name;
  final String desc;
  final String est;
  final WorkoutStatus status;
  final String next;
  final String last;
  const WorkoutModel({
    required this.name,
    required this.desc,
    required this.est,
    required this.status,
    required this.next,
    required this.last,
  });

  @override
  List<Object> get props {
    return [
      name,
      desc,
      est,
      status,
      next,
      last,
    ];
  }
}
