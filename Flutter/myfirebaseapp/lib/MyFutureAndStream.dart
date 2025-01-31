import 'package:flutter/material.dart';

class MyFutureandStream extends StatefulWidget {
  const MyFutureandStream({super.key});

  @override
  State<MyFutureandStream> createState() => _MyFutureandStreamState();
}

class _MyFutureandStreamState extends State<MyFutureandStream> {
  int count = 0;

  Stream<int> counter() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 3));

      count++;

      yield count;
    }
  }
  // Future<int> counter() async {
  //   int timer = 0;
  //   await Future.delayed(Duration(seconds: 3));
  //   setState(() {
  //     timer++;
  //     count = timer;
  //   });
  //   return count;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: StreamBuilder(
              stream: counter(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Text("No data available");
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text("Loading....");
                }
                return Text("${snapshot.data}");
              })),
    );
  }
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //         child: FutureBuilder(
  //             future: counter(),
  //             builder: (context, index) {
  //               return Text(count.toString());
  //             })),
  //   );
  // }
}
