import 'dart:core';
import 'package:flutter/material.dart';
import 'package:swirl_transition_clean/LeftSection/LeftSection.dart';
import 'package:swirl_transition_clean/RightSection/RightSection.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

enum deviceType {
  phone,
  tablet,
  smallTablet,
  desktop,
}

class MyApp extends StatefulWidget {
  static var type;

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          print(constraints.maxWidth);
          if (constraints.maxWidth < 1127.0 && constraints.maxWidth > 818.0) {
            MyApp.type = deviceType.tablet;
          } else if (constraints.maxWidth < 818.0 &&
              constraints.maxWidth > 580.0) {
            MyApp.type = deviceType.smallTablet;
          } else if (constraints.maxWidth < 580.0) {
            MyApp.type = deviceType.phone;
          } else {
            MyApp.type = deviceType.desktop;
          }
          return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                (MyApp.type == deviceType.smallTablet || MyApp.type == deviceType.phone )? Container() : LeftSection(),
                RightSection(),
              ],
            ),
          );
        },
      ),
    );
  }
}
