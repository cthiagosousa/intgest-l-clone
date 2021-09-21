import 'package:mobx/mobx.dart';

part 'settings_store.g.dart';

class SettingsStore = _SettingsStore with _$SettingsStore;

abstract class _SettingsStore with Store {
  @observable
  bool cityCouncilNotifications = false;

  @observable
  bool plenarySessionNotifications = false;

  @observable
  bool isDarkMode = false;

  @action
  void changeCityCouncilNotifications(bool? value) {
    cityCouncilNotifications = value!;
  }

  @action
  void changePlenarySessionNotifications(bool? value) {
    plenarySessionNotifications = value!;
  }

  @action
  void changeDarkMode(bool value) {
    isDarkMode = value;
  }
}
