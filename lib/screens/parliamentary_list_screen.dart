import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intgest_legislativo/components/app_bar_widget.dart';
import 'package:intgest_legislativo/stores/country_store.dart';
import 'package:intgest_legislativo/stores/parliamentary_store.dart';
import 'package:intgest_legislativo/components/parliamentary_item_widget.dart';

class ParliamentaryListScreen extends StatelessWidget {
  final CountryStore _countryStore = GetIt.I.get<CountryStore>();

  @override
  Widget build(BuildContext context) {
    final ParliamentaryStore _parliamentaryStore = ParliamentaryStore();

    return Scaffold(
      appBar: AppBarWidget(
        title: _countryStore.country.name,
        subtitle1: "Câmara Municipal",
        subtitle2: "Parlamentares",
        imagePath: _countryStore.country.imagePath,
        backgroundImagePath: _countryStore.country.backgroundPath,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
            itemCount: _parliamentaryStore.parliamentarys.length,
            itemBuilder: (context, index) {
              final parliamentary = _parliamentaryStore.parliamentarys[index];
              return ParliamentaryItemWidget(parliamentary: parliamentary);
            }),
      ),
    );
  }
}
