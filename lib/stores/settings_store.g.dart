// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SettingsStore on _SettingsStore, Store {
  final _$cityCouncilNotificationsAtom =
      Atom(name: '_SettingsStore.cityCouncilNotifications');

  @override
  bool get cityCouncilNotifications {
    _$cityCouncilNotificationsAtom.reportRead();
    return super.cityCouncilNotifications;
  }

  @override
  set cityCouncilNotifications(bool value) {
    _$cityCouncilNotificationsAtom
        .reportWrite(value, super.cityCouncilNotifications, () {
      super.cityCouncilNotifications = value;
    });
  }

  final _$plenarySessionNotificationsAtom =
      Atom(name: '_SettingsStore.plenarySessionNotifications');

  @override
  bool get plenarySessionNotifications {
    _$plenarySessionNotificationsAtom.reportRead();
    return super.plenarySessionNotifications;
  }

  @override
  set plenarySessionNotifications(bool value) {
    _$plenarySessionNotificationsAtom
        .reportWrite(value, super.plenarySessionNotifications, () {
      super.plenarySessionNotifications = value;
    });
  }

  final _$isDarkModeAtom = Atom(name: '_SettingsStore.isDarkMode');

  @override
  bool get isDarkMode {
    _$isDarkModeAtom.reportRead();
    return super.isDarkMode;
  }

  @override
  set isDarkMode(bool value) {
    _$isDarkModeAtom.reportWrite(value, super.isDarkMode, () {
      super.isDarkMode = value;
    });
  }

  final _$_SettingsStoreActionController =
      ActionController(name: '_SettingsStore');

  @override
  void changeCityCouncilNotifications(bool? value) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
        name: '_SettingsStore.changeCityCouncilNotifications');
    try {
      return super.changeCityCouncilNotifications(value);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changePlenarySessionNotifications(bool? value) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
        name: '_SettingsStore.changePlenarySessionNotifications');
    try {
      return super.changePlenarySessionNotifications(value);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeDarkMode(bool value) {
    final _$actionInfo = _$_SettingsStoreActionController.startAction(
        name: '_SettingsStore.changeDarkMode');
    try {
      return super.changeDarkMode(value);
    } finally {
      _$_SettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cityCouncilNotifications: ${cityCouncilNotifications},
plenarySessionNotifications: ${plenarySessionNotifications},
isDarkMode: ${isDarkMode}
    ''';
  }
}
