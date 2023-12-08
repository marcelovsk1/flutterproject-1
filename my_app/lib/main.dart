import 'package:flutter/material.dart';
import 'package:my_app/Screen/home.dart';
import 'package:my_app/Screen/screen_excercise.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
