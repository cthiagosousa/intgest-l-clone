import 'package:hive_flutter/hive_flutter.dart';
import 'package:intgest_legislativo/models/settings.dart';

class SettingsRepository {
  Box preferences = Hive.box<Settings>("preferences");

  bool get isDarkMode => preferences.get("darkmode", defaultValue: false);
  bool get cityCouncilNotifications =>
      preferences.get("cityCouncilNotifications", defaultValue: false);
  bool get plenarySessionNotifications =>
      preferences.get("plenarySessionNotifications", defaultValue: false);

  Future<void> setIsDarkMode(bool value) async {
    await preferences.put("darkmode", value);
  }

  Future<void> setcityCouncilNotifications(bool value) async {
    await preferences.put("councilnotifications", value);
  }

  Future<void> setplenarySessionNotifications(bool value) async {
    await preferences.put("plenarynotifications", value);
  }
}
