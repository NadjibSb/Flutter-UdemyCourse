import 'package:flutter/material.dart';

class Gestures extends StatelessWidget {

  final String title;


  Gestures(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(this.title),
      ),
      body: new Center(
        child: new CustomButton(),
      ),
    );
  }

}

class CustomButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(

      onTap: () {
        final snackbar = new SnackBar(
          content: new Text("Custom Button pressed !!"),
          backgroundColor: Theme.of(context).backgroundColor,
          duration: new Duration(milliseconds: 800),
        );
        Scaffold.of(context).showSnackBar(snackbar);
      },

      child: new Container(
        padding: new EdgeInsets.all(18.0),
        decoration: new BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: new BorderRadius.circular(5.0)
        ),
        child: new Text("Custom button"),
      ),
    );
  }
}