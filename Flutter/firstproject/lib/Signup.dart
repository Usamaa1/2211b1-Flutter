import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstproject/Login.dart';
import 'package:firstproject/validator.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    final signupForm = GlobalKey<FormState>();
    TextEditingController emailField = TextEditingController();
    TextEditingController passwordField = TextEditingController();

    SignupUser() async {
      if (signupForm.currentState?.validate() ?? false) {
        try {
          final credential =
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailField.text,
            password: passwordField.text,
          );
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("User Signup Successfully"),
          ));
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            print('The password provided is too weak.');
            print(e.code);
          } else if (e.code == 'email-already-in-use') {
            print('The account already exists for that email.');
          }
        } catch (e) {
          print(e);
        }
      }
    }

    Future<UserCredential> signInWithGoogle() async {
      // Create a new provider
      GoogleAuthProvider googleProvider = GoogleAuthProvider();

      googleProvider
          .addScope('https://www.googleapis.com/auth/contacts.readonly');
      googleProvider.setCustomParameters({'login_hint': 'user@example.com'});

      // Once signed in, return the UserCredential
      return await FirebaseAuth.instance.signInWithPopup(googleProvider);

      // Or use signInWithRedirect
      // return await FirebaseAuth.instance.signInWithRedirect(googleProvider);
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: signupForm,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: "Enter your Email",
                    // hintText: "Enter your Email",
                    helperText: "abc@gmail.com",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(width: 2, color: Colors.black))),
                keyboardType: TextInputType.number,
                controller: emailField,
                validator: emailValidator,
                // obscureText: true,
                // obscuringCharacter: "*",
                style: TextStyle(),
              ),
              TextFormField(
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
                validator: passwordValidator,
              ),
              ElevatedButton(
                onPressed: SignupUser,
                child: Text("Signup"),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text("Already have an account? Login"),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  signInWithGoogle();
                },
                child: Text("Signin with Google"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
