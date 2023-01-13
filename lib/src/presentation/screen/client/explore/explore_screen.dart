import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../coach/client/clients_screen.dart';
import '../../../../gen/assets.gen.dart';
import '../../../widgets/export.dart';

import '../../../configs/config.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppTheme.mainHorizEdge,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Murilo Campos', style: AppFont.t.s(24).w600),
                          Box.w(5),
                          const StatusCircle(Status.active,
                              showStatusName: false)
                        ],
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 20,
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 2),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                            ignoreGestures: true,
                          ),
                          Text('(102 reviews)',
                              style: AppFont.t.s(8).w500.hint),
                        ],
                      ),
                      Box.h(6),
                      Row(
                        children: [
                          Text('CREF: 1234567', style: AppFont.t.s(10).w400),
                          Box.w(50),
                          Text('\$20 - \$30', style: AppFont.t.s(10).w400),
                        ],
                      ),
                      Text('distance 5km', style: AppFont.t.s(12).w500.hint),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Assets.images.whatsapp.image(),
                        Box.h(14),
                        Assets.images.phone.image(),
                      ],
                    ),
                    Box.w(8),
                    ClipOval(
                      child: Container(
                        child: Assets.images.avatar.image(),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Box.h(10),
            Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: AppTheme.borderRadius(30),
                  child: SizedBox(
                    width: double.infinity,
                    child: Assets.images.exercise3.image(fit: BoxFit.cover),
                  ),
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
            Box.h(16),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: const [
                Tag(TagType.slimming),
                Tag(TagType.functional),
                Tag(TagType.fortification),
              ],
            ),
            Box.h(10),
            Text(
              'About me',
              style: AppFont.t.s(12).w700.blueLv2,
            ),
            const Divider(color: Palette.black),
            Text(
              ' Treinos personalizados para Artes marciais, Cardíacos, obesos, diabéticos, Condicionamento físico, Definição muscular, Emagrecimento, entre outros.\n\nIdeal para quem busca resultados a curto prazo, com motivação e orientação individual, aulas dinâmicas com foco nos resultados. Treinos prescritos sempre respeitando o condicionamento e o objetivo do aluno.\n\nAgende uma aula teste e se surpreenda! ',
              style: AppFont.t.s(12),
            ),
            Box.h(8),
            Center(
              child: InkWell(
                onTap: () {},
                child: Text(
                  'More',
                  style: AppFont.t.s(12).w500.hint,
                ),
              ),
            ),
            Box.h(10),
            Text(
              'Reviews',
              style: AppFont.t.s(12).w700.blueLv2,
            ),
            const Divider(color: Palette.black),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ClipOval(
                    child: Container(
                      child: Assets.images.avatar.image(),
                    ),
                  ),
                ),
                Box.w(8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Fabricio Saciloto',
                            style: AppFont.t.s(20).w500,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: RatingBar.builder(
                              itemSize: 16,
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                              ignoreGestures: true,
                            ),
                          ),
                        ],
                      ),
                      Box.h(4),
                      Text(
                        ' Como foi a sua experiência durante as negociações?\nExcelente! Fernando é atencioso, educado e justo!\n\nO que achou dos métodos de treino e comunicação?\nExcelente também. Fernando é preocupado, dá um treino serio e de acordo com o objetivo.\n\nPorque você recomenda Murilo Campos?\nPorque é extremamente serio no treino, pontual, interessado respeitoso, flexível e muito gente boa!\n',
                        style: AppFont.t.s(12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: InkWell(
                onTap: () {},
                child: Text(
                  '100+ reviews',
                  style: AppFont.t.s(12).w500.hint,
                ),
              ),
            ),
            Box.h(8),
          ],
        ),
      ),
    );
  }
}
