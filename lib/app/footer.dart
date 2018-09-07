import 'package:achieve_daily/app/header.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  Footer({Key footer}) : super(key: footer);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
    String state = "default";
    HeaderState header = new HeaderState();
    
  void _handleNavigationTap(String stateString) {
    setState(() {
      state = stateString;
    });
  }

  Widget build(BuildContext context) {
    double height = (MediaQuery.of(context).size.height * 11.25) / 100;
    return Container(
      color: Color(0xFF52504f),
      child: Row(
        children: 
        <Widget>[
          GestureDetector(child: 
            Image.asset(state == "town" ? "images/town_button_tap.png" :"images/town_button.png",
              width: height,
              fit: BoxFit.contain),
              onTap: () { _handleNavigationTap("town"); }),
          GestureDetector(child:
            Image.asset(state == "warning" ? "images/warning_button_tap.png" : "images/warning_button.png",
              width: height,
              fit: BoxFit.contain),
              onTap: () { _handleNavigationTap("warning"); }),
          GestureDetector(child:
            Image.asset(state == "home" ? "images/home_button_tap.png" : "images/home_button.png",
              width: height,
              fit: BoxFit.contain),
              onTap: () { _handleNavigationTap("home"); }),
          GestureDetector(child:
            Image.asset(state == "facebook" ? "images/facebook_button_tap.png" : "images/facebook_button.png",
              width: height,
              fit: BoxFit.contain),
              onTap: () { _handleNavigationTap("facebook"); }),
          GestureDetector(child:
            Image.asset(state == "settings" ? "images/settings_button_tap.png" : "images/settings_button.png",
              width: height,
              fit: BoxFit.contain),
              onTap: () { _handleNavigationTap("settings"); }),
          ],
      )
    );
  }
}
