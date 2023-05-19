import 'package:flutter/material.dart';
import 'package:calculator/calculator.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Calculator",
      home: Calculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}
