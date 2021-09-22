import 'package:hive_flutter/hive_flutter.dart';

@HiveType(typeId: 0)
class Settings extends HiveObject {
  @HiveField(0)
  bool isDarkMode;

  @HiveField(1)
  bool cityCouncilNotifications;

  @HiveField(2)
  bool plenarySessionNotifications;

  Settings({
    required this.isDarkMode,
    required this.cityCouncilNotifications,
    required this.plenarySessionNotifications,
  });
}

class SettingsAdapter extends TypeAdapter<Settings> {
  @override
  final typeId = 0;

  @override
  Settings read(BinaryReader reader) {
    return Settings(
      isDarkMode: reader.read(),
      cityCouncilNotifications: reader.read(),
      plenarySessionNotifications: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, Settings obj) {
    writer.write(obj.isDarkMode);
    writer.write(obj.cityCouncilNotifications);
    writer.write(obj.plenarySessionNotifications);
  }
}
