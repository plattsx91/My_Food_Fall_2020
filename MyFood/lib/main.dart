import 'dart:ui';
import './view/Login.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // This widget is the root of your application.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;
  runApp(
      MaterialApp(
        theme: ThemeData.dark(),
        home: MyLogin(title: 'MyAppLogin', camera: firstCamera,),
      ),
  );
}


