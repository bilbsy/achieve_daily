import 'dart:io';

import 'package:achieve_daily/app/navigationBar.dart';
import 'package:flutter/material.dart';

class Achievements extends StatefulWidget {
  Achievements({Key footer}) : super(key: footer);

  @override
  _AchievementsState createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
    String state = "default";
    NavigationBarState navigationBarState = new NavigationBarState();
    
  void _handleNavigationTap(String stateString) {
    setState(() {
      state = stateString;
    });
  }

  Widget build(BuildContext context) {
    precacheImage(new FileImage(File('Images/') ), context);
    double height = ((MediaQuery.of(context).size.height * 11.25) / 100);
    return Container(
      child: Column ( 
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[ Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            GestureDetector(
                child: Image.asset(
                    state == "money"
                        ? "images/dollar_button_tap.png"
                        : "images/dollar_button.png",                         
                    height: state == "money" ? height : height / 2,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("money"); }),
            GestureDetector(
                child: Image.asset(
                    state == "health"
                        ? "images/heart_button_tap.png"
                        : "images/heart_button.png",
                    height: state == "health" ? height : height / 2,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("health"); }),
            GestureDetector(
                child: Image.asset(
                    state == "work"
                        ? "images/briefcase_button_tap.png"
                        : "images/briefcase_button.png",
                    height: state == "work" ? height : height / 2,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("work"); }),
            GestureDetector(
                child: Image.asset(
                    state == "social"
                        ? "images/chatbox_button_tap.png"
                        : "images/chatbox_button.png",
                    height: state == "social" ? height : height / 2,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("social"); }),
            GestureDetector(
                child: Image.asset(
                    state == "knowledge"
                        ? "images/atom_button_tap.png"
                        : "images/atom_button.png",
                    height: state == "knowledge" ? height : height / 2,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("knowledge"); }),
          ],
      )]
    )
    );
  }
}
