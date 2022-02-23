import 'dart:ui';

import 'package:flutter/cupertino.dart';

class GlassMorphism extends StatelessWidget {
  const GlassMorphism({Key? key, required this.blur, required this.opacity, required this.child}) : super(key: key);

  final double blur;
  final double opacity;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          decoration: BoxDecoration(
            color: CupertinoColors.white.withOpacity(opacity),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              width: 2.5,
              color: CupertinoColors.white.withOpacity(0.2),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
