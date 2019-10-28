import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

void main() => runApp(MyApp());

String appName = "kcal";

class MyApp extends StatelessWidget {
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

class TodayCounter extends StatelessWidget {
  Widget build(BuildContext context) {
    return GradientCard(
      gradient: Gradients.hotLinear,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 1,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(children: [
          Icon(
            Icons.sentiment_very_satisfied,
            size: 50,
            color: Colors.white,
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "768",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "calories today",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: ListView(
          children: [TodayCounter()],
          padding: EdgeInsets.all(20),
        ),
      ),
      appBar: null,
    );
  }
}
