import 'dart:ui';

import 'package:flutter/material.dart';

class Glass extends StatelessWidget {
  final double width;
  final double height;
  final bool isRounded;
  final Widget child;
  const Glass({
    super.key,
    required this.width,
    required this.height,
    this.isRounded = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        isRounded ? (width > height ? height / 2 : width / 2) : 0,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(.5),
          ),
          child: child,
        ),
      ),
    );
  }
}
