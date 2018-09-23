import 'package:achieve_daily/app/header.dart';
import 'package:flutter/material.dart';
import 'package:achieve_daily/app/body.dart';
import 'package:flutter/services.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  AppState createState() => new AppState();
}

class AppState extends State<App> with SingleTickerProviderStateMixin {
  String state = "";

  handleNavigationTap(String stateString) {
    setState(() {
      state = stateString;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    Widget body = Body();
    Widget header = Header(handleNavigationTap: handleNavigationTap);
    
    return new Scaffold(
        appBar: new PreferredSize(
          preferredSize: Size(50.0, 50.0),
          child: new Card(
            margin: EdgeInsets.zero,
            child: header
          )),
        body: ListView(
          children: [
            body
            //ad?
          ],
        )
      );
  }
}