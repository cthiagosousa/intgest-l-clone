import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intgest_legislativo/components/app_bar_widget.dart';
import 'package:intgest_legislativo/stores/country_store.dart';

class LoginScreen extends StatelessWidget {
  final CountryStore _countryStore = GetIt.I.get<CountryStore>();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      appBar: AppBarWidget(
        title: _countryStore.country.name,
        subtitle1: "Câmara Municipal",
        subtitle2: "Login",
        imagePath: _countryStore.country.imagePath,
        backgroundImagePath: _countryStore.country.backgroundPath,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "CPF",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
