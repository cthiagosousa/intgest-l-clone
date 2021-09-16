import 'package:flutter/material.dart';
import 'package:intgest_legislativo/components/home_item_widget.dart';
import 'package:intgest_legislativo/utils/routes.dart';

class OptionListTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeItemWidget(
          title: "Carta de Serviços",
          description:
              "A Carta de Serviços ao Cidadão informa os cidadãos sobre quais os serviços prestados pelos órgãos e entidades da Administração Municipal, como acessar e obter esses serviços e quais são os compromissos de atendimento estabelecidos.",
          iconPath: "assets/icons/prancheta.png",
          onTap: () {},
        ),
        HomeItemWidget(
          title: "e - Participação",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          iconPath: "assets/icons/participacao.png",
          onTap: () {},
        ),
        HomeItemWidget(
          title: "Mesa Diretora",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          iconPath: "assets/icons/reuniao-de-negocios.png",
          onTap: () {},
        ),
        HomeItemWidget(
          title: "Sessões",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          iconPath: "assets/icons/reuniao.png",
          onTap: () {},
        ),
        HomeItemWidget(
          title: "Parlamentares",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          iconPath: "assets/icons/parlamentares.png",
          onTap: () => Navigator.pushNamed(context, Routes.PARLIAMENTARIANS),
        ),
      ],
    );
  }
}
