import 'package:flutter/material.dart';

class MyProductCards extends StatelessWidget {
  final String? cardTitle;
  final String? cardPrice;
  final String cardImage;
  final String? cardRating;

  const MyProductCards(
      {super.key,
      this.cardTitle,
      this.cardPrice,
      required this.cardImage,
      this.cardRating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black26,width: 1),
          borderRadius: BorderRadius.circular(10)
        ),

        width: 200,
        height: 230,
        child: Column(
          
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
              Image.network(cardImage),
              CircleAvatar(
                backgroundColor: Colors.black38,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.heart_broken,color: Colors.white,),
                ),
              ),
            ]),
            Text(
              cardTitle!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
                Text(
                  "Electronics",
                 style: TextStyle(color: Colors.grey),
                ),
                 Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text("3.4"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$4500", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10))
                ),
                width: 30,
                height: 30,
                child: Icon(Icons.add,color: Colors.white,),
              ),
              ]
            )
          ],
        ),
      ),
    );
  }
}
