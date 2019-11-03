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

/// UI utility class
/// Regroups extended card functionalities such as gradients,
/// shadows, padding, ...
class FancyCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double borderRadius;
  final Color backgroundColor;
  final Gradient gradient;
  final BoxShadow boxShadow;
  final double height;

  FancyCard({
    @required this.child,
    @required this.padding,
    @required this.borderRadius,
    this.boxShadow,
    this.backgroundColor,
    this.gradient,
    this.margin,
    this.height,
  });

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          this.boxShadow,
        ],
        borderRadius: BorderRadius.circular(this.borderRadius),
        gradient: this.gradient,
        color: this.backgroundColor,
      ),
      margin: this.margin,
      child: Padding(
        padding: this.padding,
        child: this.child,
      ),
      height: height,
    );
  }
}
