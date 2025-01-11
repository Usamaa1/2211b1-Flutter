import 'package:firstproject/MyHeading.dart';
import 'package:flutter/material.dart';

class STLScreenTwo extends StatelessWidget {
  const STLScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: MyHeading(title: "Screen 2"),
      ),
    );
  }
}
