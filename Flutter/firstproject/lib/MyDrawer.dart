import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(),
                  SizedBox(
                    height: 10,
                  ),
                  Text("useremail@gmail.com"),
                  Text("+92-3443454345"),
                ],
              ),
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: (){},
                      title: Text('Item - $index'),
                    );
                  }),
            )
          ],
        ),
      ),
      body: Center(
        child: Text("This is my Drawer"),
      ),
    );
  }
}
