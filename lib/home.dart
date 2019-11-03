import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'ui/fancy_card.dart';

/// Homepage definitions
class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: ListView(
          children: [
            TodayCounter(),
            TodayStats(),
          ],
          padding: EdgeInsets.all(20),
        ),
      ),
      appBar: null,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        elevation: 5,
      ),
    );
  }
}

/// Calorie counter for the day
class TodayCounter extends StatelessWidget {
  Widget build(BuildContext context) {
    return FancyCard(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 15),
      borderRadius: 15,
      gradient: Gradients.blush,
      boxShadow: BoxShadow(
        color: Colors.red[200],
        blurRadius: 5.0,
        offset: Offset(1, 1),
      ),
      child: Row(children: [
        Icon(
          Icons.sentiment_very_satisfied,
          size: 50,
          color: Colors.white.withAlpha(200),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "1367",
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

/// Food stats for the day
class TodayStats extends StatelessWidget {
  Widget build(BuildContext context) {
    return FancyCard(
      padding: const EdgeInsets.all(20),
      borderRadius: 10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(child: Text("Total food mass today:")),
                Text(
                  "1567g",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(FontAwesomeIcons.seedling, color: Colors.green),
                  ),
                  Text("Vegetables"),
                  Expanded(child: Text("371g", textAlign: TextAlign.end)),
                ],
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Colors.grey[300],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child:
                        Icon(FontAwesomeIcons.appleAlt, color: Colors.red[400]),
                  ),
                  Text("Fruits"),
                  Expanded(child: Text("114g", textAlign: TextAlign.end)),
                ],
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Colors.grey[300],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(FontAwesomeIcons.breadSlice,
                        color: Colors.yellow[700]),
                  ),
                  Text("Starch"),
                  Expanded(child: Text("546g", textAlign: TextAlign.end)),
                ],
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Colors.grey[300],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(FontAwesomeIcons.drumstickBite,
                        color: Colors.orange[700]),
                  ),
                  Text("Meat"),
                  Expanded(child: Text("246g", textAlign: TextAlign.end)),
                ],
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Colors.grey[300],
                ),
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(FontAwesomeIcons.candyCane,
                        color: Colors.pink),
                  ),
                  Text("Other"),
                  Expanded(child: Text("56g", textAlign: TextAlign.end)),
                ],
              ),
            ),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1,
                  color: Colors.grey[300],
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      boxShadow: BoxShadow(
        color: Colors.grey[400],
        blurRadius: 3.0,
        offset: Offset(1, 1),
      ),
    );
  }
}
