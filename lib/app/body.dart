import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Widget build(BuildContext context) {
  double height = (MediaQuery.of(context).size.height * 73.8) / 100;
    return Container(
        height: height
    );
  }
}
