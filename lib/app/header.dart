import 'package:achieve_daily/app/App.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  Header({Key key}) : super(key: key);

  @override
  HeaderState createState() => HeaderState();
}

class HeaderState extends State<Header> {
  String state = "home";

  void resetHeaderState(){
    setState(() {
      state = "home";
    });
  }

  void _handleNavigationTap(String stateString) {
    setState(() {
      state = stateString;
    });
  }

  static void preload(context, String path) {
    var configuration = createLocalImageConfiguration(context);
    new NetworkImage(path)..resolve(configuration);
  }

  Widget build(BuildContext context) {
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
            Image.asset(state == "home" ? "images/home_button_tap.png" : "images/home_button.png",
              width: width,
              fit: BoxFit.contain),
              onTap: () { _handleNavigationTap("home"); }),
          GestureDetector(child:
            Image.asset(state == "achievement" ? "images/achievement_button_tap.png" : "images/achievement_button.png",
              width: width,
              fit: BoxFit.contain),
              onTap: () { _handleNavigationTap("achievement"); }),
          GestureDetector(child:
            Image.asset(state == "facebook" ? "images/facebook_button_tap.png" : "images/facebook_button.png",
              width: width,
              fit: BoxFit.contain),
              onTap: () { _handleNavigationTap("facebook"); }),
          GestureDetector(child:
            Image.asset(state == "settings" ? "images/settings_button_tap.png" : "images/settings_button.png",
              width: width,
              fit: BoxFit.contain),
              onTap: () { _handleNavigationTap("settings"); }),
          ],
        ));
  }
}
