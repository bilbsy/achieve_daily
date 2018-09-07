import 'package:achieve_daily/app/footer.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  Header({Key key}) : super(key: key);

  @override
  HeaderState createState() => HeaderState();
}

class HeaderState extends State<Header> {
  String state = "default";


  void resetHeaderState(){
    setState(() {
      state = "default";
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
    double height = (MediaQuery.of(context).size.height * 11.25) / 100;
    return Container(
        height: height,
        color: Color(0xFF52504f),
        child: Row(
          children: <Widget>[
            GestureDetector(
                child: Image.asset(
                    state == "money"
                        ? "images/dollar_button_tap.png"
                        : "images/dollar_button.png",                         
                    height: height,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("money"); }),
            GestureDetector(
                child: Image.asset(
                    state == "health"
                        ? "images/heart_button_tap.png"
                        : "images/heart_button.png",
                    height: height,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("health"); }),
            GestureDetector(
                child: Image.asset(
                    state == "work"
                        ? "images/briefcase_button_tap.png"
                        : "images/briefcase_button.png",
                    height: height,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("work"); }),
            GestureDetector(
                child: Image.asset(
                    state == "social"
                        ? "images/chatbox_button_tap.png"
                        : "images/chatbox_button.png",
                    height: height,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("social"); }),
            GestureDetector(
                child: Image.asset(
                    state == "knowledge"
                        ? "images/atom_button_tap.png"
                        : "images/atom_button.png",
                    height: height,
                    fit: BoxFit.contain,
                    gaplessPlayback: true),
                onTap: () { _handleNavigationTap("knowledge"); }),
          ],
        ));
  }
}
