// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SettingsStore on _SettingsStore, Store {
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

  final _$changeDarkModeAsyncAction =
      AsyncAction('_SettingsStore.changeDarkMode');

  @override
  Future<void> changeDarkMode(bool value) {
    return _$changeDarkModeAsyncAction.run(() => super.changeDarkMode(value));
  }

  final _$changeCityCouncilNotificationsAsyncAction =
      AsyncAction('_SettingsStore.changeCityCouncilNotifications');

  @override
  Future<void> changeCityCouncilNotifications(bool? value) {
    return _$changeCityCouncilNotificationsAsyncAction
        .run(() => super.changeCityCouncilNotifications(value));
  }

  final _$changePlenarySessionNotificationsAsyncAction =
      AsyncAction('_SettingsStore.changePlenarySessionNotifications');

  @override
  Future<void> changePlenarySessionNotifications(bool? value) {
    return _$changePlenarySessionNotificationsAsyncAction
        .run(() => super.changePlenarySessionNotifications(value));
  }

  @override
  String toString() {
    return '''
isDarkMode: ${isDarkMode},
cityCouncilNotifications: ${cityCouncilNotifications},
plenarySessionNotifications: ${plenarySessionNotifications}
    ''';
  }
}
