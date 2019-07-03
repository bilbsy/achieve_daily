import 'package:achieve_daily/app/App.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  final appState;
  NavigationBar(this.appState);

  @override
  NavigationBarState createState() => NavigationBarState(appState: appState);
}

class NavigationBarState extends State<NavigationBar> {
  AppState appState;
  NavigationBarState({
    this.appState
  });

  void _handleNavigationTap(String stateString) {
    setState(() {
      this.appState.setState((){
        this.appState.state = stateString;
      });
    });
  }

  static void preload(context, String path) {
    var configuration = createLocalImageConfiguration(context);
    new NetworkImage(path)..resolve(configuration);
  }

  Widget build(BuildContext context) {
    preload(context, "images/");
    double width = (MediaQuery.of(context).size.width * 25.00) / 100;
    return Container(
        color: Color(0xFF52504f),
        child: Row(
          children:
            <Widget>[
              GestureDetector(child:
                Image.asset(this.appState.state == "facebook" ? "images/facebook_button_tap.png" : "images/facebook_button.png",
                  width: width,
                  fit: BoxFit.contain),
                  onTap: () { _handleNavigationTap("facebook"); }),
              GestureDetector(child:
                Image.asset(this.appState.state == "achievement" ? "images/achievement_button_tap.png" : "images/achievement_button.png",
                  width: width,
                  fit: BoxFit.contain),
                  onTap: () { _handleNavigationTap("achievement"); }),
              GestureDetector(child:
                Image.asset(this.appState.state == "home" ? "images/home_button_tap.png" : "images/home_button.png",
                  width: width,
                  fit: BoxFit.contain),
                  onTap: () { _handleNavigationTap("home"); }),
              GestureDetector(child:
                Image.asset(this.appState.state == "settings" ? "images/settings_button_tap.png" : "images/settings_button.png",
                  width: width,
                  fit: BoxFit.contain),
                  onTap: () { _handleNavigationTap("settings"); }),
              ],
        ));
  }
}
