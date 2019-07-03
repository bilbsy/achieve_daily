import 'package:flutter/material.dart';

class Settings extends StatefulWidget
{
  Settings({Key key}) : super(key: key);
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings>
{
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child:  SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text('Settings', style: new TextStyle(fontFamily: 'SairaCondensed',fontSize: 64.0, color: Colors.white)),
                getButton("Admin Settings"),
                getButton("Super Secret Settings"),
                getButton("Notifications"),
                getButton("Social Media Settings"),
                getButton("Recommend Achievement"),
                getButton("Report Bug"),
            ]
          )
        )
    );
  }
}

Widget getButton(String text)
{
  return new InkWell(
    onTap: () => print('hello world!!!!'),
    child: new Container(
      margin: EdgeInsets.all(10.0),
      height: 50.0,
      decoration: new BoxDecoration(
        color: Colors.blueAccent,
        border: new Border.all(color: Colors.cyan, width: 2.0),
        borderRadius: new BorderRadius.circular(10.0),
      ),
      child: new Center(child: new Text(text, style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
    ),
  );
}