import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  Widget Build(){
    return Container(
      child: Row(
        children: <Widget> [Icon(Icons.favorite, size: 150.0, color: Colors.purple,)]
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
  }
}