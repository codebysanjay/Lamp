import 'package:flutter/material.dart';

class RoomName extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color color;
  final String roomName, roomName2;
  final bool isSwitchOn;
  final Duration animatedDuration;

  const RoomName(
      {Key key,
      this.screenWidth,
      this.screenHeight,
      this.color,
      this.roomName,
      this.isSwitchOn,
      this.roomName2,
      this.animatedDuration})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: screenHeight * 0.15,
      width: screenWidth,
      child: AnimatedContainer(
        duration: animatedDuration,
        child: Center(
          child: Transform.rotate(
            angle: isSwitchOn ? 0 : -1.58,
            child: Text(
              isSwitchOn ? roomName2 : roomName.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 26,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
