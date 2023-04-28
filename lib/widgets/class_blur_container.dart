import 'dart:ui';

import 'package:flutter/material.dart';

class ClassBlurContainer extends StatelessWidget {
  const ClassBlurContainer({
    super.key,
    required this.width,
    required this.height,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
