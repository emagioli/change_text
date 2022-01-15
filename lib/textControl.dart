import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TextControl extends StatelessWidget {
  VoidCallback changeText;

  TextControl({required this.changeText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        onPressed: this.changeText,
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
        ),
        child: Text("SHOW ANSWER"),
      ),
    );
  }
}
