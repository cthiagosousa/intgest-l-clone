import 'package:mobx/mobx.dart';
import 'package:intgest_legislativo/repositories/settings_repository.dart';

part 'settings_store.g.dart';

class SettingsStore = _SettingsStore with _$SettingsStore;
final SettingsRepository _preferences = SettingsRepository();

abstract class _SettingsStore with Store {
  @observable
  bool isDarkMode = _preferences.isDarkMode as bool;

  @observable
  bool cityCouncilNotifications = _preferences.cityCouncilNotifications as bool;

  @observable
  bool plenarySessionNotifications =
      _preferences.plenarySessionNotifications as bool;

  @action
  Future<void> changeDarkMode(bool value) async {
    isDarkMode = value;
    await _preferences.setIsDarkMode(isDarkMode);
  }

  @action
  Future<void> changeCityCouncilNotifications(bool? value) async {
    cityCouncilNotifications = value!;
    await _preferences.setcityCouncilNotifications(cityCouncilNotifications);
  }

  @action
  Future<void> changePlenarySessionNotifications(bool? value) async {
    plenarySessionNotifications = value!;
    await _preferences
        .setplenarySessionNotifications(plenarySessionNotifications);
  }
}
