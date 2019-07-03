import 'package:achieve_daily/app/navigationBar.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Achievements extends StatefulWidget {
  Achievements({Key footer}) : super(key: footer);

  @override
  _AchievementsState createState() => _AchievementsState();
}

class _AchievementsState extends State<Achievements> {
  String state = "default";
  NavigationBarState navigationBarState = new NavigationBarState();
  final databaseReference = FirebaseDatabase.instance.reference();

  void _handleNavigationTap(String stateString) {
    setState(() {
      state = stateString;
    });
  }

  Widget build(BuildContext context) {
    double width = ((MediaQuery.of(context).size.width * 20) / 100);
    return Container(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SingleChildScrollView(
                  child: StreamBuilder(
                stream:
                    Firestore.instance.collection('achievements').snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) return const Text('Loading...');

                  var drawerRows = <Widget>[];
                  var achievements = snapshot.data.documents;
                  if (snapshot.data.documents.length != 0) {
                    for (int i = 0; i < achievements.length; i++) {
                      if (achievements[i]['category'] == state)
                        drawerRows.add(
                            _buildAchievementItem(context, achievements[i]));
                    }
                  }
                  return Column(
                    children: drawerRows);
                },
              )),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                      child: Image.asset(
                          state == "money"
                              ? "images/dollar_button_tap.png"
                              : "images/dollar_button.png",
                          width: state == "money" ? width : width,
                          fit: BoxFit.contain,
                          gaplessPlayback: true),
                      onTap: () {
                        _handleNavigationTap("money");
                      }),
                  GestureDetector(
                      child: Image.asset(
                          state == "health"
                              ? "images/heart_button_tap.png"
                              : "images/heart_button.png",
                          width: state == "health" ? width : width,
                          fit: BoxFit.contain,
                          gaplessPlayback: true),
                      onTap: () {
                        _handleNavigationTap("health");
                      }),
                  GestureDetector(
                      child: Image.asset(
                          state == "work"
                              ? "images/briefcase_button_tap.png"
                              : "images/briefcase_button.png",
                          width: state == "work" ? width : width,
                          fit: BoxFit.contain,
                          gaplessPlayback: true),
                      onTap: () {
                        _handleNavigationTap("work");
                      }),
                  GestureDetector(
                      child: Image.asset(
                          state == "social"
                              ? "images/chatbox_button_tap.png"
                              : "images/chatbox_button.png",
                          width: state == "social" ? width : width,
                          fit: BoxFit.contain,
                          gaplessPlayback: true),
                      onTap: () {
                        _handleNavigationTap("social");
                      }),
                  GestureDetector(
                      child: Image.asset(
                          state == "knowledge"
                              ? "images/atom_button_tap.png"
                              : "images/atom_button.png",
                          width: state == "knowledge" ? width : width,
                          fit: BoxFit.contain,
                          gaplessPlayback: true),
                      onTap: () {
                        _handleNavigationTap("knowledge");
                      }),
                ],
              )
            ]));
  }

  Widget _buildAchievementItem(
      BuildContext context, DocumentSnapshot document) {
    return new InkWell(
      child: new Container(
          margin: EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          decoration: new BoxDecoration(
            color: Colors.blueAccent,
            border: new Border.all(color: Colors.cyan, width: 2.0),
            borderRadius: new BorderRadius.circular(10.0),
          ),
          padding: const EdgeInsets.all(5.0),
          child: Row(children: <Widget>[
            Text(document['points'].toString(),
                style: Theme.of(context).textTheme.display1),
            Text(
              document["name"],
              style: Theme.of(context).textTheme.headline,
            ),
          ])),
    );
  }
}
