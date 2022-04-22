import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final String text;
  final Color textColor;
  const LargeText({Key? key, required this.text, required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 34.0,
        color: textColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
