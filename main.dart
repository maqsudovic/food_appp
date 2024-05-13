import 'package:flutter/material.dart';
import 'package:food_app_new/homepage.dart';

void main(List<String> args) {
  runApp(Food_app());
}

class Food_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Homepage(),
      ),
    );
  }
}