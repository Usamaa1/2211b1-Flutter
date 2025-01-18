import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstproject/Login.dart';
import 'package:firstproject/MyHeading.dart';
import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: null,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(context,
                     MaterialPageRoute(builder: (context) => Login()));
              },
              icon: Icon(Icons.logout))
        ],
      ),
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
