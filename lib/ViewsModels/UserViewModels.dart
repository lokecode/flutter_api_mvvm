import 'package:http/http.dart' as http;
import 'dart:async';

import 'package:test200/Models/User.dart';

class UserViewModels {
  static Future<List<User>> getUser() async {
    var data = await http.get("https://jsonplaceholder.typicode.com/users",
        headers: {
          'Content-type' : 'application/json',
          'Accept' : 'application/json',
        });
    return userFromJson(data.body);
  }
}