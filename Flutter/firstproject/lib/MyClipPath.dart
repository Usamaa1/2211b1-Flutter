import 'dart:ui';

import 'package:flutter/material.dart';

class MyClipPath extends StatelessWidget {
  const MyClipPath({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // ClipRect(
            //   child:
            //   Align(
            //     widthFactor: 0.5,
            //     heightFactor: 0.4,
            //     child:
            //     Image.network(
            //         "https://images.unsplash.com/photo-1735822081075-2afd7a7e7ba1?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            //   ),
            // ),

            // ClipRRect(
            //   borderRadius: BorderRadius.circular(10),
            //   child: Image.network("https://images.unsplash.com/photo-1735822081075-2afd7a7e7ba1?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            // ),
            // ClipOval(
            //   child: Image.network("https://images.unsplash.com/photo-1735822081075-2afd7a7e7ba1?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            // ),
            ClipPath(
              clipper: RPSCustomPainter(),
              child: Image.network(
                  "https://images.unsplash.com/photo-1735822081075-2afd7a7e7ba1?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  fit: BoxFit.cover,
                  ),
            )
            // CustomPaint(
            //   size: Size(200, (200 * 0.625).toDouble()),
            //   painter: RPSCustomPainter(),
            //   // child: Image.network("https://images.unsplash.com/photo-1735822081075-2afd7a7e7ba1?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
            // ),
          ],
        ),
      ),
    );
  }
}


class RPSCustomPainter extends CustomClipper<Path>{
  
    @override
  Path getClip(Size size){
     
    Path path_0 = Path();
    path_0.moveTo(size.width*0.3325000,size.height*0.1140000);
    path_0.quadraticBezierTo(size.width*0.2715625,size.height*0.6285000,size.width*0.2512500,size.height*0.8000000);
    path_0.lineTo(size.width*0.7487500,size.height*0.8020000);
    path_0.quadraticBezierTo(size.width*0.8171875,size.height*0.2100000,size.width*0.3325000,size.height*0.1140000);
    path_0.close();

    return path_0;

     }
         
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  
    
  }


  

