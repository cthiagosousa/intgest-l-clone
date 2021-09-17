import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intgest_legislativo/models/parliamentary.dart';
import 'package:intgest_legislativo/stores/country_store.dart';
import 'package:intgest_legislativo/components/app_bar_widget.dart';
import 'package:intgest_legislativo/components/parliamentary_chart_widget.dart';
import 'package:intgest_legislativo/components/parliamentary_contact_card_widget.dart';
import 'package:intgest_legislativo/components/parliamentary_grid_item_widget.dart';

class ParliamentaryScreen extends StatelessWidget {
  final CountryStore _countryStore = GetIt.I.get<CountryStore>();

  @override
  Widget build(BuildContext context) {
    final Parliamentary _parliamentary =
        ModalRoute.of(context)!.settings.arguments as Parliamentary;

    return Scaffold(
      appBar: AppBarWidget(
        title: _parliamentary.name,
        subtitle1: "Câmara Municipal de Piquet Carneiro",
        subtitle2: _parliamentary.politicalParty,
        imagePath: _parliamentary.photoPath,
        backgroundImagePath: _countryStore.country.backgroundPath,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5),
            ParliamentaryContactCardWidget(
              phoneNumber: _parliamentary.phoneNumber,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      controller: ScrollController(),
                      children: [
                        ParliamentaryGridItemWidget(
                          title: "Produção Legislativa",
                          iconPath: "assets/icons/pasta.png",
                        ),
                        ParliamentaryGridItemWidget(
                          title: "Comissões",
                          iconPath: "assets/icons/comissao.png",
                        ),
                        ParliamentaryGridItemWidget(
                          title: "Agenda Parlamentar",
                          iconPath: "assets/icons/agenda.png",
                        ),
                        ParliamentaryGridItemWidget(
                          title: "Mandatos",
                          iconPath: "assets/icons/politico.png",
                        ),
                        ParliamentaryGridItemWidget(
                          title: "Filiações",
                          iconPath: "assets/icons/handshake-de-parceria.png",
                        ),
                        ParliamentaryGridItemWidget(
                          title: "Notícias",
                          iconPath: "assets/icons/midia-social.png",
                        ),
                      ],
                    ),
                  ),
                  ParliamentaryChartWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
