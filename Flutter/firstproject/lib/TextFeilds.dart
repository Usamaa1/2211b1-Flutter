import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextFeild extends StatelessWidget {
  MyTextFeild({super.key});
  TextEditingController textController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(  
              decoration: InputDecoration(
                labelText: "Enter your Email",
                // hintText: "Enter your Email",
                helperText: "abc@gmail.com",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 2, color: Colors.black))
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: textController,
              // obscureText: true,
              // obscuringCharacter: "*",
              style: TextStyle(),
              
            ),
          ),
          Text(textController.toString())
        ],
      )),
    );
  }
}
