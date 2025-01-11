import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  const MyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 45,
          child: SizedBox(
            height: 300,
            child: Column(
              children: [
                Image.network("https://images.unsplash.com/photo-1734014938145-fd1ba3a8cf5f?q=80&w=1503&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",width: 200,),
                Text("My Heading")
              ],
            ),
          ),
        ),
      ),
    );
  }
}