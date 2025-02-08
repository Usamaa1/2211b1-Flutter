import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyProdImageView extends StatefulWidget {
  const MyProdImageView({super.key});

  @override
  State<MyProdImageView> createState() => _MyProdImageViewState();
}

class _MyProdImageViewState extends State<MyProdImageView> {

    final Stream<QuerySnapshot> myProds =  FirebaseFirestore.instance.collection('prod').snapshots();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: myProds,
          builder: (context, snapshot) {
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  final prod = snapshot.data!.docs;
                  return ListTile(
                    title: Text(prod[index]['prodName']),
                    subtitle: Text(prod[index]['prodPrice']),
                    leading:
                        Image.memory(base64Decode(prod[index]['prodImage']),width: 100,),
                  );
                });
          }),
    );
  }
}
