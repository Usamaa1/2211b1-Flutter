import 'package:flutter/material.dart';

class MyModal extends StatefulWidget {
  const MyModal({super.key});

  @override
  State<MyModal> createState() => _MyModalState();
}

class _MyModalState extends State<MyModal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    children: [
                      TextField()
                    ],
                  );
                });

            // showDialog(
            //     barrierDismissible: false,
            //     context: context,
            //     builder: (context) {
            //       return AlertDialog(
            //         content: Column(
            //           children: [TextField()],
            //         ),
            //         actions: [
            //           ElevatedButton(onPressed: () {}, child: Text("Add")),
            //           ElevatedButton(
            //               onPressed: () {
            //                 Navigator.pop(context);
            //               },
            //               child: Text("Close")),
            //         ],
            //       );
            //     });
          },
          child: Text("Open Modal"),
        ),
      ),
    );
  }
}
