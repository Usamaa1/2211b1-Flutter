import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myfirebaseapp/AddProducts.dart';
import 'package:myfirebaseapp/MyFutureAndStream.dart';
import 'package:myfirebaseapp/MyModal.dart';
import 'package:myfirebaseapp/ViewProducts.dart';
import 'package:myfirebaseapp/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:  DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ViewProducts()
    );
  }
}