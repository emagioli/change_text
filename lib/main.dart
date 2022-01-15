// 3) Split the app into three widgets: App, TextControl & Text

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './textControl.dart';
import './bodyText.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _bodyText = "What's the coolest animal in the world?";

  void _changeText() {
    setState(() {
      _bodyText = "It's the raccoon, of course!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Change Text App"),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BodyText(
                text: _bodyText,
              ),
              TextControl(
                changeText: _changeText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
