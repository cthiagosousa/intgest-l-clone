import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intgest_legislativo/models/settings.dart';

import 'package:intgest_legislativo/theme.dart';
import 'package:intgest_legislativo/utils/routes.dart';
import 'package:intgest_legislativo/config/hive_config.dart';
import 'package:intgest_legislativo/stores/settings_store.dart';
import 'package:intgest_legislativo/stores/country_store.dart';
import 'package:intgest_legislativo/screens/login_screen.dart';
import 'package:intgest_legislativo/screens/home_screen.dart';
import 'package:intgest_legislativo/screens/parliamentary_list_screen.dart';
import 'package:intgest_legislativo/screens/parliamentary_screen.dart';
import 'package:intgest_legislativo/screens/settings_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.start();
  await Hive.openBox<Settings>("preferences");
  Hive.registerAdapter(SettingsAdapter());

  GetIt.I.registerSingleton<CountryStore>(CountryStore());
  GetIt.I.registerSingleton<SettingsStore>(SettingsStore());

  runApp(App());
}

class App extends StatelessWidget {
  final SettingsStore _settingsStore = GetIt.I.get<SettingsStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => MaterialApp(
        title: "IntGest-L",
        debugShowCheckedModeBanner: false,
        theme: AppTheme.ligthTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: _settingsStore.isDarkMode ? ThemeMode.dark : ThemeMode.light,
        initialRoute: '/',
        routes: {
          Routes.HOME: (_) => HomeScreen(),
          Routes.PARLIAMENTARIANS: (_) => ParliamentaryListScreen(),
          Routes.PARLIAMENTARY: (_) => ParliamentaryScreen(),
          Routes.LOGIN: (_) => LoginScreen(),
          Routes.SETTINGS: (_) => SettingsScreen(),
        },
      ),
    );
  }
}
