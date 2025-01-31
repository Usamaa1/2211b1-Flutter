import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ViewProducts extends StatefulWidget {
  const ViewProducts({super.key});

  @override
  State<ViewProducts> createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {
  final Stream<QuerySnapshot> productsData =
      FirebaseFirestore.instance.collection('products').snapshots();

  Future updateProd(prodId, prodName, prodDesc, prodPrice) async {
    TextEditingController prodNameController =
        TextEditingController(text: prodName //prod[index]["prodName"]
            );
    TextEditingController prodPriceController =
        TextEditingController(text: prodPrice //prod[index]["prodPrice"]
            );
    TextEditingController prodDescController =
        TextEditingController(text: prodDesc //prod[index]["prodDesc"]
            );

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Edit"),
            content: SizedBox(
              height: 300,
              child: Column(
                children: [
                  TextField(
                    controller: prodNameController,
                  ),
                  TextField(
                    controller: prodPriceController,
                  ),
                  TextField(
                    controller: prodDescController,
                  ),
                ],
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () async {
                  print(prodId //prod[index].id
                      );
                  await FirebaseFirestore.instance
                      .collection("products")
                      .doc(prodId //prod[index].id
                          )
                      .update({
                    "prodName": prodNameController.text,
                    "prodPrice": prodPriceController.text,
                    "prodDesc": prodDescController.text,
                  });
                },
                child: Text("Edit"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: productsData,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          final prod = snapshot.data!.docs;
          return ListView.builder(
              itemCount: prod.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(prod[index]["prodName"]),
                  subtitle: Text(prod[index]["prodDesc"]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () async {
                            final prodId = prod[index].id;
                            final prodName = prod[index]["prodName"];
                            final prodPrice = prod[index]["prodPrice"];
                            final prodDesc = prod[index]["prodDesc"];
                            updateProd(prodId, prodName, prodPrice, prodDesc);
                          },
                          icon: Icon(Icons.edit)),
                      IconButton(
                          onPressed: () async {
                            print(prod[index].id);
                            await FirebaseFirestore.instance
                                .collection("products")
                                .doc(prod[index].id)
                                .delete();
                          },
                          icon: Icon(Icons.delete)),
                    ],
                  ),
                );
              });
        },
      ),
    );
  }
}
