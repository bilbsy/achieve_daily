import 'package:achieve_daily/app/navigationBar.dart';
import 'package:flutter/material.dart';
import 'package:achieve_daily/app/body.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  AppState createState() => new AppState();
}

class AppState extends State<App> with SingleTickerProviderStateMixin {
  String state = "home";
  PageController _pageController = new PageController();

  void handleNavigationTap(String stateString) {
    setState(() {
      state = stateString;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    Widget body = new Body(this);
    Widget navigationBar = new NavigationBar(this);
    
    return new Scaffold(
        body: PageView(
          children: [
            body
            //ad?
          ],
          controller: _pageController,
        ),
        bottomNavigationBar: new Card(
            margin: EdgeInsets.zero,
            child: navigationBar,
      ));
  }

  

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }
}