//Dart Imports
import 'dart:async';
//Fliutter Imports
import 'package:flutter/material.dart';

class AnimatedSlider extends StatefulWidget {
  final Widget child;
  final double dx, dy;
  final int milliseconds;
  AnimatedSlider(
      {@required this.child,
      this.dx = 0.0,
      this.dy = 0.0,
      this.milliseconds = 600})
      : assert(child != null);
  @override
  _AnimatedSliderState createState() => _AnimatedSliderState();
}

class _AnimatedSliderState extends State<AnimatedSlider>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: widget.milliseconds));
    Timer(Duration(milliseconds: 150), () {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position:
            Tween<Offset>(begin: Offset(widget.dx, widget.dy), end: Offset.zero)
                .animate(_animationController),
        child: widget.child);
  }
}
