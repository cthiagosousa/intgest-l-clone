import 'package:hive_flutter/hive_flutter.dart';

class SettingsRepository {
  Box<bool> preferences = Hive.box<bool>("preferences");

  bool? get isDarkMode => preferences.get("darkmode", defaultValue: false);

  bool? get cityCouncilNotifications =>
      preferences.get("cityCouncilNotifications", defaultValue: false);

  bool? get plenarySessionNotifications =>
      preferences.get("plenarySessionNotifications", defaultValue: false);

  Future<void> setIsDarkMode(bool value) async {
    await preferences.put("darkmode", value);
  }

  Future<void> setcityCouncilNotifications(bool value) async {
    await preferences.put("cityCouncilNotifications", value);
  }

  Future<void> setplenarySessionNotifications(bool value) async {
    await preferences.put("plenarySessionNotifications", value);
  }
}
