import 'package:flutter/material.dart';

class MyHeading extends StatelessWidget {
  final String title;
  final double? fontSize;
  final bool textAlign;
  // final Color? fontColor;
  final int? fontColor;
  const MyHeading({
    super.key,
    required this.title,
    this.fontSize,
    this.fontColor,
    this.textAlign = true,
  });

  @override
  Widget build(BuildContext context) {
    // return Text(title!);
    // return Text(
    //   title ?? "",
    //   style: TextStyle(
    //       fontSize: 22, color: Colors.blueAccent, fontWeight: FontWeight.bold),
    // );
    return textAlign == true
        ? Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: fontSize ?? 22,
                  // color: fontColor ?? Colors.blueAccent,
                  color: Color(fontColor ?? 0xFF0984e3),
                  fontWeight: FontWeight.bold),
            ),
          )
        : Text(
            title,
            style: TextStyle(
                fontSize: fontSize ?? 22,
                // color: fontColor ?? Colors.blueAccent,
                color: Color(fontColor ?? 0xFF0984e3),
                fontWeight: FontWeight.bold),
          );
  }
}
