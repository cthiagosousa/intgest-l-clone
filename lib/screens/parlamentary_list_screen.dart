import 'package:flutter/material.dart';
import 'package:intgest_legislativo/components/appbar_bottom_widget.dart';
import 'package:intgest_legislativo/components/parlamentary_item_widget.dart';

class ParliamentaryListScreen extends StatelessWidget {
  const ParliamentaryListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 180,
        title: Image.asset(
          "assets/images/logo.png",
          fit: BoxFit.cover,
          width: 150,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.help,
              color: theme.primaryColor,
              size: 25,
            ),
            splashRadius: 23,
            splashColor: theme.accentColor,
            onPressed: () {},
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(130),
          child: AppBarBottomWidget(
            title: "Piquet Carneiro",
            subtitle1: "Câmara Municipal",
            subtitle2: "Parlamentares",
            size: 130,
            imagePath: "assets/images/logo2.png",
            backgroundImagePath:
                "http://revistacentral.com.br/wp-content/uploads/2020/07/Piquet-Carneiro-768x402.jpg",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            ParlamentaryItemWidget(
              name: "ANTONIO LEANDRO DE MEDEIROS",
              email: "antonioleandro@camara.com",
              phoneNumber: "(88) 3516-1699",
              politicalParty: "PDT - PARTIDO DEMOCRÁTICO",
              imagePath:
                  "https://intellgest-sigl-media.s3.amazonaws.com/media/sigg/public/parlamentar/14/xandoca.ofc.jpg.150x190_q85_crop.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
