import 'dart:convert';
import 'package:hive/hive.dart';

part 'account.g.dart';

@HiveType(typeId: 1)
class Account extends HiveObject {
  @HiveField(0)
  String localId;

  @HiveField(1)
  String email;

  @HiveField(2)
  String displayName;

  @HiveField(3)
  String idToken;

  @HiveField(4)
  bool registered;

  @HiveField(5)
  String refreshToken;

  @HiveField(6)
  String expiresIn;

  Account({
    required this.localId,
    required this.email,
    required this.displayName,
    required this.idToken,
    required this.registered,
    required this.refreshToken,
    required this.expiresIn,
  });

  Map<String, dynamic> toMap() {
    return {
      "localId": localId,
      "email": email,
      "displayName": displayName,
      "idToken": idToken,
      "registered": registered,
      "refreshToken": refreshToken,
      "expiresIn": expiresIn,
    };
  }

  factory Account.fromMap(Map<String, dynamic> map) {
    return Account(
      displayName: map["displayName"],
      email: map["email"],
      expiresIn: map["expiresIn"],
      idToken: map["idToken"],
      localId: map["localId"],
      refreshToken: map["refreshToken"],
      registered: map["registered"],
    );
  }

  String toJson() => json.encode(toMap());

  factory Account.fromJson(String source) =>
      Account.fromMap(json.decode(source));
}
