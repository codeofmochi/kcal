import 'package:flutter/material.dart';

/// UI utility class
/// Regroups extended card functionalities such as gradients,
/// shadows, padding, ...
class FancyCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double borderRadius;
  final Gradient gradient;
  final BoxShadow boxShadow;

  FancyCard({
    @required this.child,
    @required this.padding,
    @required this.borderRadius,
    @required this.gradient,
    @required this.boxShadow,
  });

  Widget build(BuildContext context) {
    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          this.boxShadow,
        ],
        borderRadius: BorderRadius.circular(this.borderRadius),
        gradient: this.gradient,
      ),
      child: Padding(
        padding: this.padding,
        child: this.child,
      ),
    );
  }
}
