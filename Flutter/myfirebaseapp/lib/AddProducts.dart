import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myfirebaseapp/ViewProducts.dart';

class MyProducts extends StatelessWidget {
  const MyProducts({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController prodName = TextEditingController();
    TextEditingController prodPrice = TextEditingController();
    TextEditingController prodDesc = TextEditingController();

    CollectionReference products =
        FirebaseFirestore.instance.collection('products');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return products
          .add({
            "prodName": prodName.text,
            "prodPrice": prodPrice.text,
            "prodDesc": prodDesc.text
          })
          .then((value) => print("Product Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(hintText: "Product Name"),
                controller: prodName,
              ),
              TextField(
                decoration: InputDecoration(hintText: "Product Price"),
                controller: prodPrice,
              ),
              TextField(
                decoration: InputDecoration(hintText: "Product Description"),
                controller: prodDesc,
              ),
              ElevatedButton(
                  onPressed: () {
                    addUser();
                  },
                  child: Text("Add Products")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ViewProducts()));
                  },
                  child: Text("View Products"))
            ],
          ),
        ),
      ),
    );
  }
}
