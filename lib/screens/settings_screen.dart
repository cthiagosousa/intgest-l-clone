import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:intgest_legislativo/components/custom_app_bar_widget.dart';
import 'package:intgest_legislativo/stores/country/country_store.dart';
import 'package:intgest_legislativo/stores/settings/settings_store.dart';

class SettingsScreen extends StatelessWidget {
  final CountryStore _countryStore = GetIt.I.get<CountryStore>();
  final SettingsStore _settingsStore = GetIt.I.get<SettingsStore>();

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBarWidget(
        title: _countryStore.country.name,
        subtitle1: "Câmara Municipal",
        subtitle2: "Configurações",
        imagePath: _countryStore.country.imagePath,
        backgroundImagePath: _countryStore.country.backgroundPath,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Observer(builder: (_) {
              return CheckboxListTile(
                title: Text(
                  "Receber notificação da câmara municipal.",
                  style: _theme.textTheme.headline6,
                ),
                checkColor: Colors.white,
                activeColor: _theme.accentColor,
                value: _settingsStore.cityCouncilNotifications,
                onChanged: _settingsStore.changeCityCouncilNotifications,
              );
            }),
            Observer(builder: (_) {
              return CheckboxListTile(
                title: Text(
                  "Receber notificação do início de Sessão Plenária.",
                  style: _theme.textTheme.headline6,
                ),
                checkColor: Colors.white,
                activeColor: _theme.accentColor,
                value: _settingsStore.plenarySessionNotifications,
                onChanged: _settingsStore.changePlenarySessionNotifications,
              );
            }),
            Observer(
              builder: (_) {
                return SwitchListTile(
                  title: Text(
                    "Modo Escuro",
                    style: _theme.textTheme.headline6,
                  ),
                  activeColor: _theme.accentColor,
                  value: _settingsStore.isDarkMode,
                  onChanged: _settingsStore.changeDarkMode,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
