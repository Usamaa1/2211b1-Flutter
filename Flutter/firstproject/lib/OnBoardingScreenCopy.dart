import 'package:flutter/material.dart';

class OnBoardingScreenCopy extends StatelessWidget {
  OnBoardingScreenCopy({super.key});
  int changePageIndex = 0;

  final List<Map<String, dynamic>> pageList = [
    {"Icon": Icons.ac_unit, "pageName": "First"},
    {"Icon": Icons.access_alarm, "pageName": "Second"},
    {"Icon": Icons.access_time_outlined, "pageName": "Third"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        onPageChanged: (index) {
          print(index);
          changePageIndex = index;
        },
        reverse: true,
        physics: BouncingScrollPhysics(),
        pageSnapping: true,
        scrollDirection: Axis.vertical,
        itemCount: pageList.length,
        itemBuilder: (context, index) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  pageList[index]["Icon"],
                  size: 150,
                ),
                Text("My ${pageList[index]["pageName"]} OnBoarding Screen"),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Dot(
                    changePageIndex: index,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final int changePageIndex;
  const Dot({super.key, required this.changePageIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: changePageIndex ==0 ? Colors.purpleAccent : const Color.fromARGB(255, 247, 209, 253),
          radius: 8,
        ),
        CircleAvatar(
          backgroundColor: changePageIndex ==1 ? Colors.purpleAccent : const Color.fromARGB(255, 247, 209, 253),
          radius: 8,
        ),
        CircleAvatar(
          backgroundColor: changePageIndex ==2 ? Colors.purpleAccent : const Color.fromARGB(255, 247, 209, 253),
          radius: 8,
        ),
      
      
      ],
    );
  }
}
