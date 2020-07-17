import 'package:flutter/material.dart';

import 'home_page.dart';

class LampSwitch extends StatelessWidget {
  final double screenWidth, screenHeight;
  final bool isSwitchOn;
  final Function onTap;
  final Color onColor, offColor;
  final Duration animationDuration;

  const LampSwitch(
      {Key key,
      this.screenWidth,
      this.screenHeight,
      this.isSwitchOn,
      this.onTap,
      this.animationDuration,
      this.onColor,
      this.offColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: screenHeight * 0.31,
      width: 30,
      right: screenWidth * 0.5 - 15,
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: <Widget>[
            AnimatedContainer(
              duration: animationDuration,
              width: 30,
              height: 70,
              decoration: BoxDecoration(
                color: isSwitchOn ? bulbOnColor : bulbOffColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            AnimatedPositioned(
              duration:  animationDuration,
              left: 0,
              right: 0,
              top: isSwitchOn? 42:4,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  color: darkGrey,
                  shape: BoxShape.circle,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
