import 'package:flutter/material.dart';
import './ui/welcome_home.dart';
import './ui/layouts.dart';
import './ui/material_design.dart';
import './ui/gestureDetector.dart';


void main() {
  final String title = "Gestures";

  runApp(new MaterialApp(
    title: title,
    //home: new Welcome(),
    //home: new Layouts(),
    //home: new MaterialDesign(),
    home: new Gestures(title),
  ));
}


