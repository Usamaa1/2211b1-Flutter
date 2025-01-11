import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.add_call),
          title: Text("My Home"),
        ),
        body: Center(
          // child: Text("My First Page",
          //     style: TextStyle(
          //       color: Color.fromARGB(255, 0, 153, 255),
          //       fontSize: 24,
          //       fontWeight: FontWeight.bold,
          //     )),
          child: Container(
            width: 120,
            height: 120,
            color: Colors.redAccent,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
             
              // padding: EdgeInsets.all(10),
              // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              // padding: EdgeInsets.only(bottom: 10),
              margin: EdgeInsets.all(40),
               child: Text("data"),
            ),
          ),
        ));
  }
}
