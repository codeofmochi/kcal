import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

/// UI utility class
/// Regroups extended card functionalities such as gradients,
/// shadows, padding, ...
class FancyCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final double borderRadius;
  final Gradient gradient;

  FancyCard({
    @required this.child,
    @required this.padding,
    @required this.borderRadius,
    @required this.gradient,
  });

  Widget build(BuildContext context) {
    return GradientCard(
      gradient: this.gradient,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(this.borderRadius),
      ),
      child: Padding(
        padding: this.padding,
        child: this.child,
      ),
    );
  }
}
