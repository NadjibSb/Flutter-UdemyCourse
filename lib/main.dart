import 'package:flutter/material.dart';
import './ui/welcome_home.dart';
import 'package:hello_world/ui/layouts.dart';
import 'package:hello_world/ui/material_design.dart';


void main() {
  runApp(new MaterialApp(
    title: "Welcome App - Layouts",
    //home: new Welcome(),
    //home: new Layouts(),
    home: new MaterialDesign(),
  ));
}


