import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyWishList extends StatefulWidget {
  const MyWishList({super.key});

  @override
  State<MyWishList> createState() => _MyWishListState();
}

class _MyWishListState extends State<MyWishList> {
  final favoriteInstance = FirebaseFirestore.instance.collection("favorites");
  final productsData = FirebaseFirestore.instance.collection('products');
  @override
  void initState() {
    super.initState();
    fetchFavProducts();
  }

  final favoriteList = [];
  final wishListProducts = [];

  Future<void> fetchFavProducts() async {
    final favProducts =
        await favoriteInstance.where("userId", isEqualTo: 1).get();

    print(favProducts.docs);

    for (var data in favProducts.docs) {
      favoriteList.add(data['prodId']);
      final prod = await productsData.doc(data['prodId']).get();
      setState(() {
        wishListProducts.add(prod.data());
      });
    }
    print("My Favorite List:");
    print(favoriteList);
    print("Wish List Products: ");
    print(wishListProducts);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: wishListProducts.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Icon(Icons.favorite, color: Colors.redAccent,),
            title: Text(wishListProducts[index]['prodName']),
            subtitle: Text(wishListProducts[index]['prodDesc']),
          ),
        );
      },
    ));
  }
}
