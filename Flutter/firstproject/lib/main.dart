import 'package:firebase_core/firebase_core.dart';
import 'package:firstproject/MyProductCards.dart';
import 'package:firstproject/Signup.dart';
import 'package:firstproject/firebase_options.dart';
// import 'package:firstproject/MyColumnRow.dart';
// import 'package:firstproject/MyText.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signup()
      // home: MyProductCards(
      //   cardTitle: "Product 1",
      //   cardImage: "https://images.unsplash.com/photo-1735506266367-d6941df3efdc?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",)
      );
  }
}
