import 'package:firstproject/MyClipPath.dart';
import 'package:firstproject/MyMediaQuery.dart';
import 'package:firstproject/MyMediaQuerySecond.dart';
import 'package:firstproject/MyTabList.dart';
import 'package:firstproject/MyTabbar.dart';
import 'package:firstproject/OnBoardingScreen.dart';
import 'package:firstproject/OnBoardingScreenCopy.dart';
import 'package:firstproject/SplashScreen.dart';
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
    return MaterialApp(home: MyMediaQuerySecond());
  }
}

