import 'package:firstproject/MyHeading.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          MyHeading(
            title: "My Heading",
            fontSize: 44,
            fontColor: 0xFF000000,
            textAlign: false,
          )
        ],
      )),
    );
  }
}
