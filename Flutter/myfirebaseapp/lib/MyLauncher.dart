// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// class Mylauncher extends StatelessWidget {
//   const Mylauncher({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Uri url = Uri.parse('https://github.com/usamaa1');

//     Future<void> launchUrl() async {
//       if (!await launchUrl(url)) {
//         throw Exception('Could not launch $url');
//       }
//     }

//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: launchUrl,
//           child: Text("Click Me!"),
//         ),
//       ),
//     );
//   }
// }
