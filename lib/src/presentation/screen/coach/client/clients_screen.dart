import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../configs/config.dart';
import '../../../../gen/assets.gen.dart';
import '../../../widgets/export.dart';

class ClientsScreen extends StatefulWidget {
  const ClientsScreen({super.key});

  @override
  State<ClientsScreen> createState() => _ClientsScreenState();
}

class _ClientsScreenState extends State<ClientsScreen> {
  List<ClientModel> clients = const [
    ClientModel(
      name: 'Murilo Campos',
      status: Status.active,
      tags: [TagType.slimming, TagType.fortification],
      canAddWorkout: true,
      since: '10/01/2022',
      payment: '10/07/2022',
    ),
    ClientModel(
      name: 'Robson Silva',
      status: Status.inactive,
      tags: [TagType.stretching, TagType.fortification],
      canAddWorkout: false,
      since: '10/01/2022',
      payment: '10/07/2022',
    ),
    ClientModel(
      name: 'Caio Bocchi',
      status: Status.overdue,
      tags: [TagType.hypertrophy, TagType.slimming],
      canAddWorkout: false,
      since: '10/01/2022',
      payment: '10/07/2022',
    ),
    ClientModel(
      name: 'Murilo Campos',
      status: Status.active,
      tags: [TagType.slimming, TagType.fortification],
      canAddWorkout: true,
      since: '10/01/2022',
      payment: '10/07/2022',
    ),
    ClientModel(
      name: 'Antonio João',
      status: Status.active,
      tags: [TagType.slimming, TagType.functional],
      canAddWorkout: true,
      since: '10/01/2022',
      payment: '10/07/2022',
    ),
    ClientModel(
      name: 'Marcelo Saciloto',
      status: Status.inactive,
      tags: [TagType.hypertrophy, TagType.fortification],
      canAddWorkout: false,
      since: '10/01/2022',
      payment: '10/07/2022',
    ),
    ClientModel(
      name: 'Anthony Gap',
      status: Status.inactive,
      tags: [TagType.slimming, TagType.fortification],
      canAddWorkout: true,
      since: '10/01/2022',
      payment: '10/07/2022',
    ),
    ClientModel(
      name: 'João Bolão',
      status: Status.overdue,
      tags: [TagType.stretching, TagType.hypertrophy],
      canAddWorkout: false,
      since: '10/01/2022',
      payment: '10/07/2022',
    ),
    ClientModel(
      name: 'Murilo Yuo',
      status: Status.active,
      tags: [TagType.slimming, TagType.functional],
      canAddWorkout: true,
      since: '10/01/2022',
      payment: '10/07/2022',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppTheme.mainHorizEdge,
      child: Column(
        children: [
          Row(
            children: [
              Text('Clients', style: AppFont.t.s(36).w600),
              const Spacer(),
              IconButton(onPressed: () {}, icon: Assets.images.addClient.svg()),
              IconButton(onPressed: () {}, icon: Assets.images.search.svg())
            ],
          ),
          Box.h(20),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 20),
              itemCount: clients.length,
              separatorBuilder: (_, i) => const Divider(color: Palette.black),
              itemBuilder: (_, i) => Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Assets.images.person.image(scale: 0.5),
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(clients[i].name, style: AppFont.t.s(20).w700),
                        MyRichText.grey('Since', clients[i].since),
                        MyRichText.grey('Payment', clients[i].payment),
                        Box.h(10),
                        if (clients[i].canAddWorkout)
                          InkWell(
                            onTap: () {},
                            child: Text('Add Workout',
                                style: AppFont.t.s(12).w700.blueLv2),
                          ),
                        if (clients[i].canAddWorkout) Box.h(4),
                        InkWell(
                          onTap: () {},
                          child: Text('View All Workouts',
                              style: AppFont.t.s(12).w700.blueLv2),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Box.h(4),
                        StatusCircle(clients[i].status),
                        Box.h(8),
                        Wrap(
                          runSpacing: 4,
                          children: clients[i].tags.map((e) => Tag(e)).toList(),
                        )
                      ],
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

class Tag extends StatelessWidget {
  final TagType tagType;
  final Color? color;
  const Tag(this.tagType, {super.key, this.color});

  Color? buildColor() {
    switch (tagType) {
      case TagType.slimming:
        return const Color(0xffff5151);
      case TagType.fortification:
        return Palette.violet;
      case TagType.functional:
        return Palette.orange;
      case TagType.hypertrophy:
        return Palette.red;
      case TagType.stretching:
        return const Color(0xff10b799);

      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
          color: color ?? buildColor(), borderRadius: AppTheme.borderRadius(5)),
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: Text(
          tagType.name.toUpperCase(),
          textAlign: TextAlign.center,
          style: AppFont.t.s(12).w500.white,
        ),
      ),
    );
  }
}

enum TagType { slimming, functional, stretching, fortification, hypertrophy }

class ClientModel extends Equatable {
  final Status status;
  final List<TagType> tags;
  final String name;
  final bool canAddWorkout;
  final String since;
  final String payment;
  const ClientModel({
    required this.status,
    required this.tags,
    required this.name,
    required this.canAddWorkout,
    required this.since,
    required this.payment,
  });

  @override
  List<Object> get props {
    return [
      status,
      tags,
      name,
      canAddWorkout,
      since,
      payment,
    ];
  }
}
