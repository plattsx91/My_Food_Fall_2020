import './Login.dart';
import './Camera.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';
class Menu extends StatefulWidget {
  final camera;
  Menu({Key key, this.camera}) :
        super(key: key);

  @override
  MenuState createState() => MenuState();
}

class MenuState extends State<Menu> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Column(
        children: <Widget>[
          RaisedButton(
          child: Text("Return to login"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyLogin(camera: widget.camera,))
            );
          } ,
      ),
      RaisedButton(
          child: Text("Take Picture"),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TakePictureScreen(camera: widget.camera,))
            );
          } ,
      ),
      ]
        ),
      ),
    );
  }
}