import 'package:firstproject/MyTabList.dart';
import 'package:flutter/material.dart';

class MyTabbar extends StatelessWidget {
  const MyTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          bottom: Tab(
          child: TabBar(
              isScrollable: true,
              physics: BouncingScrollPhysics(),
              tabs: [
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text("Stories"),
                ),
                Tab(
                  child: Text("Calls"),
                ),
                Tab(
                  child: Text("Second Last Tab"),
                ),
                Tab(
                  child: Text("Last Tab"),
                ),
              ]),
        )),
        body: TabBarView(
          children: [
            MyTabList(listTitle: "Chat Screen"),
            MyTabList(listTitle: "Stories Screen"),
            MyTabList(listTitle: "Call Screen"),
            MyTabList(listTitle: "Call Screen"),
            MyTabList(listTitle: "Call Screen"),
          ],
        ),
      ),
    );
  }
}
