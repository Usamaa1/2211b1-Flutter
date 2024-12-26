import 'package:firstproject/STLScreenOne.dart';
// import 'package:firstproject/MyColumnRow.dart';
// import 'package:firstproject/MyText.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: STLScreenOne());
  }
}
