import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    this.name,
    this.username,
    this.company,
  });

  String name;
  String username;
  Company company;

  factory User.fromJson(Map<String, dynamic> json) => User(
    name: json["name"],
    username: json["username"],
    company: Company.fromJson(json["company"]),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "username": username,
    "company": company.toJson(),
  };
}

class Company {
  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  String name;
  String catchPhrase;
  String bs;

  factory Company.fromJson(Map<String, dynamic> json) => Company(
    name: json["name"],
    catchPhrase: json["catchPhrase"],
    bs: json["bs"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "catchPhrase": catchPhrase,
    "bs": bs,
  };
}
