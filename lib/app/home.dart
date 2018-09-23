import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context){
    return Container(
      child: Row(
        children: <Widget> [Icon(Icons.favorite, size: 150.0, color: Colors.purple)]
      ),
    );
  }
}