import 'package:flutter/material.dart';

class Mytables extends StatelessWidget {
  const Mytables({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Table(
          border: TableBorder.all(),
          // border: TableBorder(
          //   verticalInside: BorderSide(width: 1),
          //   horizontalInside: BorderSide(width: 1)
          // ),
          children: [
            TableRow(
              decoration: BoxDecoration(),
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Heading1", style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Text("Value 1"),
            ]),
            TableRow(children: [
              Text("Heading1",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Value 1"),
            ]),
            TableRow(children: [
              Text("Heading1",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Value 1"),
            ]),
            TableRow(children: [
              Text("Heading1",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("Value 1"),
            ]),
          ],
        ),
      ),
    );
  }
}
