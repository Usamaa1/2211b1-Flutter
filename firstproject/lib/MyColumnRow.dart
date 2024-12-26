import 'package:flutter/material.dart';

class MyColumnRow extends StatelessWidget {
  const MyColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.purpleAccent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.redAccent,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.brown,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
