import 'package:flutter/material.dart';

class ExpandedFlexible extends StatelessWidget {
  const ExpandedFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            child: Container(
              // width: 100,
              // height: 100,
              color: Colors.amber,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              // width: 100,
              color: const Color.fromARGB(255, 7, 164, 255),
            ),
          ),
          Flexible(
            child: Container(
              // height: 200,
              // width: 200,
              color: Colors.redAccent,
            ),
          )
        ],
      ),
    );
  }
}
