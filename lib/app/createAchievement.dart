import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:achieve_daily/app/models/achievements.dart';

class CreateAchievement extends StatefulWidget {
  CreateAchievement({Key key}) : super(key: key);
  @override
  _CreateAchievement createState() => _CreateAchievement();
}

class _CreateAchievement extends State<CreateAchievement> {
  var achievement = new Achievement();
  var categoryEditingController = new TextEditingController();
  var nameEditingController = new TextEditingController();
  var descriptionEditingController = new TextEditingController();
  var frequencyEditingController = new TextEditingController();
  var frequencyMaxEditingController = new TextEditingController();
  var pointsEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextField(
            controller: categoryEditingController,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: 'Category'),
            onChanged: (str) {
              achievement.category = categoryEditingController.text;
            },
          ),
          TextField(
            controller: nameEditingController,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: 'Name'),
            onChanged: (str) {
              achievement.name = nameEditingController.text;
            },
          ),
          TextField(
            controller: descriptionEditingController,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Description'),
            onChanged: (str) {
              achievement.description = descriptionEditingController.text;
            },
          ),
          TextField(
            controller: frequencyEditingController,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Frequency'),
            onChanged: (str) {
              achievement.frequency = frequencyEditingController.text;
            },
          ),
          TextField(
            controller: frequencyMaxEditingController,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'Frequency Max'),
            onChanged: (str) {
              achievement.frequencyMax =
                  int.parse(frequencyMaxEditingController.text);
            },
          ),
          TextField(
            controller: pointsEditingController,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: 'Points'),
            onChanged: (str) {
              achievement.points = int.parse(pointsEditingController.text);
            },
          ),
          InkWell(
            child: new Container(
              margin: EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                color: Colors.blueAccent,
                border: new Border.all(color: Colors.cyan, width: 2.0),
                borderRadius: new BorderRadius.circular(10.0),
              ),
              padding: const EdgeInsets.all(5.0),
              child: Text('Save Changes',
                  style: Theme.of(context).textTheme.display1),
            ),
            onTap: () {
              _saveChanges(achievement);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Future _saveChanges(Achievement achievement) async {
    Firestore.instance.collection('achievements').add({
      'category': achievement.category,
      'name': achievement.name,
      'description': achievement.description,
      'frequency': achievement.frequency,
      'frequencyMax': achievement.frequencyMax,
      'points': achievement.points
    });
  }
}
