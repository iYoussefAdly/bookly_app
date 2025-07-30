import 'dart:ui';

import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slideAnimation});

  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideAnimation,
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
          position: slideAnimation,
          child: Text(
            "Read free books",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
        );
      },
    );
  }
}
