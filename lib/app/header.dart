import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  Header({Key key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  String state = "default";
  void _handleTapMoney() {
    setState(() {
      state = "money";
    });
  }

  void _handleTapHealth() {
    setState(() {
      state = "health";
    });
  }

  void _handleTapWork() {
    setState(() {
      state = "work";
    });
  }

  void _handleTapSocial() {
    setState(() {
      state = "social";
    });
  }

  void _handleTapKnowledge() {
    setState(() {
      state = "knowledge";
    });
  }

  Widget build(BuildContext context) {
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
                    fit: BoxFit.contain),
                onTap: _handleTapMoney),
            GestureDetector(
                child: Image.asset(
                    state == "health"
                        ? "images/heart_button_tap.png"
                        : "images/heart_button.png",
                    height: height,
                    fit: BoxFit.contain),
                onTap: _handleTapHealth),
            GestureDetector(
                child: Image.asset(
                    state == "work"
                        ? "images/briefcase_button_tap.png"
                        : "images/briefcase_button.png",
                    height: height,
                    fit: BoxFit.contain),
                onTap: _handleTapWork),
            GestureDetector(
                child: Image.asset(
                    state == "social"
                        ? "images/chatbox_button_tap.png"
                        : "images/chatbox_button.png",
                    height: height,
                    fit: BoxFit.contain),
                onTap: _handleTapSocial),
            GestureDetector(
                child: Image.asset(
                    state == "knowledge"
                        ? "images/atom_button_tap.png"
                        : "images/atom_button.png",
                    height: height,
                    fit: BoxFit.contain),
                onTap: _handleTapKnowledge),
          ],
        ));
  }
}
