import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String text;

  BodyText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
