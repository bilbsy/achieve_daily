import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  Footer({Key key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
    String state = "default";
    void _handleTapTown(){
      setState((){
        state = "town";
      });
    }
    void _handleTapWarning(){
      setState((){
        state = "warning";
      });
    }
    void _handleTapHome(){
      setState((){
        state = "home";
      });
    }
    void _handleTapFacebook(){
      setState((){
        state = "facebook";
      });
    }
    void _handleTapSettings(){
      setState((){
        state = "settings";
      });
    }

  Widget build(BuildContext context) {
    double height = (MediaQuery.of(context).size.height * 11.25) / 100;
    return Container(
      color: Color(0xFF52504f),
      child: Row(
        children: 
        <Widget>[
          GestureDetector(child: 
            Image.asset(state == "town" ? "images/town_button_tap.png" :"images/town_button.png",
              width: height,
              fit: BoxFit.contain),
            onTap: _handleTapTown),
          GestureDetector(child:
            Image.asset(state == "warning" ? "images/warning_button_tap.png" : "images/warning_button.png",
              width: height,
              fit: BoxFit.contain),
            onTap: _handleTapWarning),
          GestureDetector(child:
            Image.asset(state == "home" ? "images/home_button_tap.png" : "images/home_button.png",
              width: height,
              fit: BoxFit.contain),
            onTap: _handleTapHome),
          GestureDetector(child:
            Image.asset(state == "facebook" ? "images/facebook_button_tap.png" : "images/facebook_button.png",
              width: height,
              fit: BoxFit.contain),
            onTap: _handleTapFacebook),
          GestureDetector(child:
            Image.asset(state == "settings" ? "images/settings_button_tap.png" : "images/settings_button.png",
              width: height,
              fit: BoxFit.contain),
            onTap: _handleTapSettings),
          ],
      )
    );
  }
}
