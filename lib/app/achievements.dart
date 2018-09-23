import 'package:achieve_daily/app/header.dart';
import 'package:flutter/material.dart';

class Achievements extends StatefulWidget {
  Achievements({Key footer}) : super(key: footer);

  @override
  _AchievementsState createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
    String state = "default";
    HeaderState header = new HeaderState();
    
  void _handleNavigationTap(String stateString) {
    setState(() {
      state = stateString;
    });
  }

  Widget build(BuildContext context) {
    double height = ((MediaQuery.of(context).size.height * 11.25) / 100) / 2;
    return Container(
      color: Color(0xFF52504f),
      child: Row(
          children: <Widget>[
            GestureDetector(
                child: Image.asset(
                    state == "money"
                        ? "images/dollar_button_tap.png"
                        : "images/dollar_button.png",                         
                    height: height,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("money"); }),
            GestureDetector(
                child: Image.asset(
                    state == "health"
                        ? "images/heart_button_tap.png"
                        : "images/heart_button.png",
                    height: height,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("health"); }),
            GestureDetector(
                child: Image.asset(
                    state == "work"
                        ? "images/briefcase_button_tap.png"
                        : "images/briefcase_button.png",
                    height: height,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("work"); }),
            GestureDetector(
                child: Image.asset(
                    state == "social"
                        ? "images/chatbox_button_tap.png"
                        : "images/chatbox_button.png",
                    height: height,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("social"); }),
            GestureDetector(
                child: Image.asset(
                    state == "knowledge"
                        ? "images/atom_button_tap.png"
                        : "images/atom_button.png",
                    height: height,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("knowledge"); }),
          ],
      )
    );
  }
}
