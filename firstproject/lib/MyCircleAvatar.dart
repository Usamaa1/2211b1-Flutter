import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  const MyCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.amber,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(
                    color: Colors.black54,
                    width: 4,
                    // style: BorderStyle.values[]
                  )),
              width: 100,
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
