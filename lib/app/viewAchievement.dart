import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String documentId;

class ViewAchievement extends StatefulWidget {
  ViewAchievement(String documentID, {Key footer}) : super(key: footer) {
    documentId = documentID;
  }

  @override
  _ViewAchievementState createState() => _ViewAchievementState();
}

class _ViewAchievementState extends State<ViewAchievement> {
  @override
  Widget build(BuildContext context) {
    return new StreamBuilder(
        stream: Firestore.instance
            .collection('achievements')
            .document(documentId)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return new Text('Loading...');
          }
          return new Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(5),
            decoration: new BoxDecoration(
              color: Colors.black54,
              border: new Border.all(color: Colors.white24, width: 2.0),
            ),
            child: Column(
              children: <Widget>[
                Text(snapshot.data['name'],
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.amber,
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Points: ' + snapshot.data['points'].toString(),
                        style: TextStyle(fontSize: 12, color: Colors.amber))),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Frequency: ' + snapshot.data['frequency'],
                      style: TextStyle(fontSize: 12, color: Colors.amber)),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                ),
                Text(snapshot.data['description'],
                    style: TextStyle(fontSize: 12, color: Colors.white30))
              ],
            ),
          );
        });
  }
}
