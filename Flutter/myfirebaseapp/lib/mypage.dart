import 'package:flutter/material.dart';

void main() => runApp(MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: two(),
    );
  }
}

class two extends StatefulWidget {
  const two({super.key});

  @override
  State<two> createState() => _twoState();
}

class _twoState extends State<two> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  String res = "";
  String err = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Row(
        children: [
          SizedBox(
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          SizedBox(
            child: TextField(
              controller: pass,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (email.text == "mubeen" && pass.text == "aptech") {
                  setState(() {
                    res = "welcome admin";
                  });
                } else {
                  setState(() {
                    err = "sorry you are not authorized";
                  });
                }
              },
              child: Text("Click me")),
          Text(res),
          Text(err)
        ],
      ),
    ));
  }
}
