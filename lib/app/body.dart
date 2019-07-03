import 'package:achieve_daily/app/App.dart';
import 'package:achieve_daily/app/settings.dart';
import 'package:flutter/material.dart';
import 'package:achieve_daily/app/achievements.dart';
import 'package:achieve_daily/app/home.dart';


class Body extends StatefulWidget {
  final appState;
  Body(this.appState);

  @override
  BodyState createState() => BodyState(appState: appState);
}

class BodyState extends State<Body> {
  AppState appState;

  BodyState({
    this.appState
  });

  Widget build(BuildContext context) {
    //Widget achievements = new Achievements();
    return Container(
      decoration: new BoxDecoration(color: Colors.black87),
      child: Row(
        children: [ getBody() ]
      ),
    );
  }

  Widget getBody(){

    switch (this.appState.state)
    {
      case "achievement":
        return Achievements();
        break;
      case "home":
        return Home();
        break;
      case "settings":
        return Settings();
      break;
      case "facebook":
        return Home();
      default:
        return Home();
        break;
    }
  }
}