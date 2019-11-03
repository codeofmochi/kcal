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
