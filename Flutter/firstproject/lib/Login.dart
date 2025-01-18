import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstproject/MyHome.dart';
import 'package:firstproject/Signup.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailField = TextEditingController();
    TextEditingController passwordField = TextEditingController();

    loginUser() async {
      try {
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
                email: emailField.text, password: passwordField.text);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => MyHome(),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  labelText: "Enter your Email",
                  // hintText: "Enter your Email",
                  helperText: "abc@gmail.com",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.black))),
              keyboardType: TextInputType.number,
              controller: emailField,
              // obscureText: true,
              // obscuringCharacter: "*",
              style: TextStyle(),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Enter your Password",
                  // hintText: "Enter your Email",
                  helperText: "minimum 6 character long",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(width: 2, color: Colors.black))),
              keyboardType: TextInputType.number,
              controller: passwordField,
              obscureText: true,
              obscuringCharacter: "*",
              style: TextStyle(),
            ),
            ElevatedButton(
              onPressed: loginUser,
              child: Text("Login"),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Signup()));
              },
              child: Text("Don't have an account? Signup"),
            )
          ],
        ),
      ),
    );
  }
}
