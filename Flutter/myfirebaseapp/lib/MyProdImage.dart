import 'dart:convert';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyProdImage extends StatefulWidget {
  const MyProdImage({super.key});

  @override
  State<MyProdImage> createState() => _MyProdImageState();
}

class _MyProdImageState extends State<MyProdImage> {
  TextEditingController prodName = TextEditingController();
  TextEditingController prodPrice = TextEditingController();
  Uint8List? _image;
  String? myBaseImage;

  Future<void> pickMyImage() async {
    ImagePicker pick = ImagePicker();

    final image = await pick.pickImage(source: ImageSource.gallery);
    final Uint8List bytes = await image!.readAsBytes();

    final String imageBase64Converted = base64Encode(bytes);
    print(imageBase64Converted);

    setState(() {
      _image = bytes;
      myBaseImage = imageBase64Converted;
    });

    // print(bytes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: prodName,
            ),
            TextField(
              controller: prodPrice,
            ),
            _image != null
                ? Image.memory(
                    base64Decode(myBaseImage!),
                    width: 100,
                  )
                : Text("No Image available"),
            ElevatedButton(onPressed: pickMyImage, child: Text("Select image")),
            ElevatedButton(
                onPressed: () async {
                  final addProd =
                      await FirebaseFirestore.instance.collection('prod');
                  addProd.add({
                    'prodName': prodName.text,
                    'prodPrice': prodPrice.text,
                    'prodImage': myBaseImage
                  });
                },
                child: Text("Submit"))
          ],
        ),
      ),
    );
  }
}
