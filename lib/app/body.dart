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
  double height = (MediaQuery.of(context).size.height * 73.8) / 100;
  Widget achievements = new Achievements();
    return Scaffold(
        body: ListView(
          children: [
            GetBody()
          ],
        )
      );
  }
}

Widget GetBody(){
  HeaderState homeState = new HeaderState();
  switch (homeState.state)
  {
    case "home":
    return Home();
    break;
  }
}