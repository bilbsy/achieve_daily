import 'package:achieve_daily/app/App.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {final Function(String) handleNavigationTap;
  Header({Key key, @required this.handleNavigationTap}) : super(key: key);

  @override
  HeaderState createState() => HeaderState();
}

class HeaderState extends State<Header> {
  void _handleNavigationTap(String stateString) {
    AppState app = new AppState();
    setState(() {
      app.state = stateString;
    });
  }

  static void preload(context, String path) {
    var configuration = createLocalImageConfiguration(context);
    new NetworkImage(path)..resolve(configuration);
  }

  Widget build(BuildContext context) {
    AppState app = new AppState();
    preload(context, "images/");
    double width = (MediaQuery.of(context).size.width * 25.00) / 100;
    double height = (MediaQuery.of(context).size.height * 12.25) / 100;
    return Container(
        height: height,
        color: Color(0xFF52504f),
        child: Row(
          children: 
        <Widget>[
          GestureDetector(child:
            Image.asset(app.state == "home" ? "images/home_button_tap.png" : "images/home_button.png",
              width: width,
              fit: BoxFit.contain),
              onTap: () { app.handleNavigationTap("home"); }),
          GestureDetector(child:
            Image.asset(app.state == "achievement" ? "images/achievement_button_tap.png" : "images/achievement_button.png",
              width: width,
              fit: BoxFit.contain),
              onTap: () { app.handleNavigationTap("achievement"); }),
          GestureDetector(child:
            Image.asset(app.state == "facebook" ? "images/facebook_button_tap.png" : "images/facebook_button.png",
              width: width,
              fit: BoxFit.contain),
              onTap: () { _handleNavigationTap("facebook"); }),
          GestureDetector(child:
            Image.asset(app.state == "settings" ? "images/settings_button_tap.png" : "images/settings_button.png",
              width: width,
              fit: BoxFit.contain),
              onTap: () { _handleNavigationTap("settings"); }),
          ],
        ));
  }
}
