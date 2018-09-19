import 'package:flutter/material.dart';
import 'package:achieve_daily/app/header.dart';
import 'package:achieve_daily/app/footer.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Widget build(BuildContext context) {
  double height = (MediaQuery.of(context).size.height * 73.8) / 100;
  Widget header = new Header();
  Widget footer = new Footer();
    return Scaffold(
        body: ListView(
          children: [
            header,
          ],
        )
      );
  }
}
