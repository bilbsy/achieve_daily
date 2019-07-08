import 'package:achieve_daily/app/navigationBar.dart';
import 'package:flutter/material.dart';
import 'package:achieve_daily/app/body.dart';
import 'package:flutter/services.dart';

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

    return new WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
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
            )));
  }

  Future<bool> _onWillPop() {
    return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
            title: new Text('Are you sure?'),
            content: new Text('Do you want to exit an App'),
            actions: <Widget>[
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: new Text('No'),
              ),
              new FlatButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: new Text('Yes'),
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }
}
