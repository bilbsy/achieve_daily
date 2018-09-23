import 'package:achieve_daily/app/header.dart';
import 'package:flutter/material.dart';
import 'package:achieve_daily/app/body.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => new AppState();
}

class AppState extends State<App> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Widget body = Body();
    Widget header = Header();
    
    return new Scaffold(

        appBar: new PreferredSize(
          preferredSize: Size(1000.0, 1000.0),
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