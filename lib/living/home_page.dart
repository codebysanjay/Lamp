import 'package:flutter/material.dart';
import 'package:smartroom_lamp/living/Lamp.dart';
import 'package:smartroom_lamp/living/Lamp_Switch.dart';
import 'package:smartroom_lamp/living/LedBulb.dart';
import 'package:smartroom_lamp/living/Room.dart';
import 'package:smartroom_lamp/living/lamp_hanger_rope.dart';

import 'LampRope.dart';

final darkGrey = const Color(0xff232323);
final bulbOnColor = const Color(0xffffe12c);
final bulbOffColor = const Color(0xffc1c1c1);
final gradientStartColor = const Color(0xffFdF3b0);
final gradientEndColor = const Color(0xffFFFFed);
final animationDuration = const Duration(milliseconds: 500);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _isSwitchOn = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          LampHangerRope(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            color: darkGrey,
          ),
          LedBulb(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            onColor: bulbOnColor,
            offColor: bulbOffColor,
            isSwitchOn: _isSwitchOn,
          ),
          Lamp(
            animatedDuration: animationDuration,
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            color: darkGrey,
            isSwitchOn: _isSwitchOn,
            startColor: gradientStartColor,
            endColor: gradientEndColor,
          ),
          LampSwitch(
            animationDuration: animationDuration,
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            onTap: () {
              setState(() {
                _isSwitchOn = !_isSwitchOn;
              });
            },
            onColor: bulbOnColor,
            offColor: bulbOffColor,
            isSwitchOn: _isSwitchOn,
          ),
          LampRope(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            color: darkGrey,
            isSwitchOn: _isSwitchOn,
            animationDuration: animationDuration,
          ),
          RoomName(
            roomName: "LIVING ROOM",
            color: darkGrey,
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            isSwitchOn: _isSwitchOn,
            roomName2: "LIGHTS ON",
            animatedDuration: animationDuration,
          ),
        ],
      ),
    );
  }
}
