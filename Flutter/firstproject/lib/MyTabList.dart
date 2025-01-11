import 'package:flutter/material.dart';

class MyTabList extends StatelessWidget {
  final String listTitle;
  const MyTabList({super.key, required this.listTitle});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("$listTitle $index"),
            ),
          );
        });
  }
}
