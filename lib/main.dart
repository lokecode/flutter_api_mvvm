import 'package:flutter/material.dart';
import 'package:test200/view/NameUserActivity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Welcome to Flutter",
        home: Builder(
          builder: (context) => Center(child: NameUser()),
        ));
  }
}
