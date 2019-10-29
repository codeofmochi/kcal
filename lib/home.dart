import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'ui/fancy_card.dart';

/// Homepage definitions
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

/// Calorie counter for the day
class TodayCounter extends StatelessWidget {
  Widget build(BuildContext context) {
    return FancyCard(
      padding: EdgeInsets.all(20),
      borderRadius: 15.0,
      gradient: Gradients.hotLinear,
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
    );
  }
}
