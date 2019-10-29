import 'package:flutter/material.dart';
import 'home.dart';

/// Main app entry point
/// Builds a new MaterialApp
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static String appName = "kcal";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Montserrat'
      ),
      home: HomePage(),
    );
  }
}
