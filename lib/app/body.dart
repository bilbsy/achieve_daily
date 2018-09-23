import 'package:achieve_daily/app/App.dart';
import 'package:achieve_daily/app/header.dart';
import 'package:flutter/material.dart';
import 'package:achieve_daily/app/achievements.dart';
import 'package:achieve_daily/app/home.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Widget build(BuildContext context) {
    Widget achievements = new Achievements();
    return Container(
      child: Row(
        children: <Widget> [Icon(Icons.favorite, size: 150.0, color: Colors.purple)]
      ),
    );
  }
}

Widget getBody(){
  AppState homeState = new AppState();
  
  switch (homeState.state)
  {
    case "home":
      return Home();
      break;
    case "achievement":
      return Achievements();
      break;
    default:
      return Home();
      break;
  }
}