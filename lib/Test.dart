// To parse this JSON data, do
//
//     final test = testFromMap(jsonString);

import 'dart:convert';

List<Test> testFromMap(String str) =>
    List<Test>.from(json.decode(str).map((x) => Test.fromMap(x)));

String testToMap(List<Test> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Test {
  Test({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  String id;
  String name;
  String email;
  String password;

  factory Test.fromMap(Map<String, dynamic> json) => Test(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
      };
}
