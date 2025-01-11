import 'package:flutter/material.dart';

class MyMediaQuerySecond extends StatelessWidget {
  const MyMediaQuerySecond({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // print(width);
    // print(height);

    return Scaffold(
      body: Center(
        child: Container(
          width: width * 0.9,
          color: Colors.amber,
          height: 400,
        
        ),
      )
    );
  }
}
