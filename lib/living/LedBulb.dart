import 'package:flutter/material.dart';

class LedBulb extends StatelessWidget {
  final double screenWidth, screenHeight;
  final onColor, offColor;
  final bool isSwitchOn;
  final Duration animationDuration = const Duration(milliseconds: 1500);

  const LedBulb({Key key, this.screenWidth, this.screenHeight, this.onColor, this.offColor, this.isSwitchOn}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth*0.18,
      top: screenHeight*0.35,
      child: AnimatedContainer(
        duration: animationDuration,
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:isSwitchOn ? onColor : offColor,
        ),
      ),
    );
  }
}
