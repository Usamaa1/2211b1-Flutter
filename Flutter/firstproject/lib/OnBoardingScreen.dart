import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        reverse: true,
        physics: BouncingScrollPhysics(),
        pageSnapping: true,
        scrollDirection: Axis.vertical,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.airline_seat_individual_suite_sharp, size: 150,),
                Text("My First OnBoarding Screen"),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.airline_seat_individual_suite_sharp, size: 150,),
                Text("My Second OnBoarding Screen"),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.airline_seat_individual_suite_sharp, size: 150,),
                Text("My Third OnBoarding Screen"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
