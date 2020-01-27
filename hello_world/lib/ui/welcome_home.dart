import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.blue,
        child: new Center(
          child: new Text(
            "Hello there",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic),
          ),
        ));
  }
}
