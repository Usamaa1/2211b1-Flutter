import 'package:flutter/material.dart';

class Myprofile extends StatelessWidget {
  const Myprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          // alignment: AlignmentDirectional.bottomEnd,
          children: [
            // Container(
            //   width: 100,
            //   height: 100,
            //   color: Colors.blueAccent,
            // ),
            // Container(
            //   width: 50,
            //   height: 50,
            //   color: Colors.redAccent,
            // ),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
              backgroundColor: Colors.blueAccent,
            ),
            Positioned(
              left: 7,
              child: CircleAvatar(
                radius: 6,
                backgroundColor: Colors.greenAccent,
              ),
            ),
            // CircleAvatar()
          ],
        ),
      ),
    );
  }
}
