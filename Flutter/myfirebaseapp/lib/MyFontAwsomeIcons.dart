import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyFontAwsomeIcons extends StatelessWidget {
  const MyFontAwsomeIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            FaIcon(FontAwesomeIcons.heart),
            FaIcon(FontAwesomeIcons.cartShopping)
            ],
        ),
      )),
    );
  }
}
