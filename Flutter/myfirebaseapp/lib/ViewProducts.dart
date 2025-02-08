import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirebaseapp/MyShimmer.dart';
import 'package:myfirebaseapp/MyWishlist.dart';

class ViewProducts extends StatefulWidget {
  const ViewProducts({super.key});

  @override
  State<ViewProducts> createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {
  final favoriteInstance = FirebaseFirestore.instance.collection("favorites");

  @override
  void initState() {
    super.initState();
    fetchFavProducts();
  }

  final favoriteList = [];

  Future<void> fetchFavProducts() async {
    final favProducts =
        await favoriteInstance.where("userId", isEqualTo: 1).get();

    print(favProducts.docs);

    for (var data in favProducts.docs) {
      favoriteList.add(data['prodId']);
    }
    print("My Favorite List:");
    print(favoriteList);
  }

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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyWishList()));
          },
          icon: Icon(Icons.shopping_bag),
        ),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: productsData,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                 return MyShimmer();
                });
            // if (snapshot.connectionState == ConnectionState.waiting) {
            //   return Center(
            //     child: CircularProgressIndicator(),
            //   );
          }
          final prod = snapshot.data!.docs;
          return ListView.builder(
              itemCount: prod.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: IconButton(
                        onPressed: () async {
                          if (favoriteList.contains(prod[index].id)) {
                            final favItemId = await favoriteInstance
                                .where("userId", isEqualTo: 1)
                                .where("prodId", isEqualTo: prod[index].id)
                                .get();
                            // favoriteInstance.doc(favItemId)
                            print(favItemId.docs.first.id);

                            favoriteInstance
                                .doc(favItemId.docs.first.id)
                                .delete();
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("Item Removed from favorites")));

                            setState(() {
                              favoriteList.remove(prod[index].id);
                            });
                          } else {
                            final favoriteInstance = FirebaseFirestore.instance
                                .collection("favorites");

                            favoriteInstance
                                .add({"prodId": prod[index].id, "userId": 1});

                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text("Item Added to favorites")));

                            setState(() {
                              favoriteList.add(prod[index].id);
                            });
                          }
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: favoriteList.contains(prod[index].id)
                              ? Colors.redAccent
                              : null,
                        )),
                    title: Text(prod[index]["prodName"],style: GoogleFonts.badScript(),),
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
                  ),
                );
              });
        },
      ),
    );
  }
}
