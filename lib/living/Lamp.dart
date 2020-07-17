import 'package:flutter/material.dart';
import 'package:smartroom_lamp/living/home_page.dart';

class Lamp extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color color, startColor, endColor;
  final bool isSwitchOn;
  final Duration animatedDuration;

  const Lamp(
      {Key key,
      @required this.screenWidth,
      @required this.screenHeight,
      @required this.color,
      @required this.isSwitchOn,
      @required this.startColor,
      @required this.endColor,
      this.animatedDuration})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenHeight * 0.15,
      width: screenWidth * 2.2,
      left: -screenWidth * 0.95,
      child: ClipPath(
        clipper: TrapezoidClipper(),
        child: Column(
          children: <Widget>[
            Container(
              height: screenHeight * 0.25,
              color: color,
            ),
            AnimatedContainer(
              duration: animatedDuration,
              height: screenHeight * 0.75,
              decoration: BoxDecoration(
                gradient: isSwitchOn
                    ? LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          bulbOnColor.withOpacity(0.55),
                          startColor.withOpacity(0.5)
                        ],
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TrapezoidClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.3, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * 0.70, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
