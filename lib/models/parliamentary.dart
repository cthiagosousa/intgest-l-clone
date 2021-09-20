import 'dart:convert';

class Parliamentary {
  int? id;
  String name;
  String email;
  String phoneNumber;
  String politicalParty;
  String photoPath;

  Parliamentary({
    this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.politicalParty,
    required this.photoPath,
  });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "phoneNumber": phoneNumber,
      "politicalParty": politicalParty,
      "photoPath": photoPath,
    };
  }

  factory Parliamentary.fromMap(Map<String, dynamic> map) {
    return Parliamentary(
      id: map['id'],
      name: map['nome'],
      email: map['email'],
      phoneNumber: map['telefone'],
      politicalParty: map['partido'],
      photoPath: map['fotografia'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Parliamentary.fromJson(String source) =>
      Parliamentary.fromMap(json.decode(source));
}
