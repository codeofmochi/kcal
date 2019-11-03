/*
  kcal / mkaycal - a free calorie tracker
  Copyright (C) 2019 Alexandre CHAU

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

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
        primarySwatch: Colors.pink,
        fontFamily: 'Montserrat'
      ),
      home: HomePage(),
    );
  }
}
