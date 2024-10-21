import 'package:flutter/material.dart';
import 'package:futter_and_rive_animation/screens/ombording_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: OmbordinScreen(),
    );
  }
}

var defaulInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(16),
  borderSide: const BorderSide(
    color: Color(0xFFDEE3F2),
    width: 1,
  )
);
