import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyShimmer extends StatelessWidget {
  const MyShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Scaffold(
        //   body:
        Card(
      child: ListTile(
        title: Shimmer.fromColors(
          highlightColor: const Color.fromARGB(255, 243, 243, 243),
          baseColor: const Color.fromARGB(255, 185, 185, 185),
          period: Duration(seconds: 1),
          child: Container(
            width: 100,
            height: 10,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          ),
        ),
        subtitle: Shimmer.fromColors(
          highlightColor: const Color.fromARGB(255, 243, 243, 243),
          baseColor: const Color.fromARGB(255, 185, 185, 185),
          period: Duration(seconds: 1),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 10,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        ),
      ),
    );
    // );
  }
}
