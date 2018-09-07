import 'package:flutter/material.dart';
import 'package:achieve_daily/app/header.dart';
import 'package:achieve_daily/app/body.dart';
import 'package:achieve_daily/app/footer.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    Widget header = Header();
    Widget body = Body();
    Widget footer = Footer();
    
    return new MaterialApp(      
      home: Scaffold(
        body: ListView(
          children: [
            header,
            body,
            footer
            //ad?
          ],
        )
      )
    );
  }
}