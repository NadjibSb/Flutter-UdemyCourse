import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new LoginState();
  }
}

class LoginState extends State<Login> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  String _guestName = "";

  void _erase() {
    setState(() {
      _userController.clear();
      _passwordController.clear();
    });
  }

  void _showWelcome() {
    setState(() {
      if (_userController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty) {
        _guestName = _userController.text;
      } else {
        _guestName = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          children: <Widget>[
            new Image.asset(
              "images/face.png",
              width: 90,
              height: 90,
              color: Colors.white,
            ),
            new Container(
              height: 180,
              width: 380,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                        icon: new Icon(Icons.person), hintText: "Username"),
                  ),
                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                        icon: new Icon(Icons.lock), hintText: "Password"),
                    obscureText: true,
                  ),
                  new Padding(padding: EdgeInsets.all(10.5)),
                  new Center(
                    child: Row(
                      children: <Widget>[
                        new Container(
                          margin: const EdgeInsets.only(left: 38),
                          child: new RaisedButton(
                            onPressed: _showWelcome,
                            color: Colors.redAccent,
                            child: new Text(
                              "Login",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                        new Container(
                          margin: const EdgeInsets.only(left: 140),
                          child: new RaisedButton(
                            onPressed: _erase,
                            color: Colors.redAccent,
                            child: new Text(
                              "Clear",
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            new Padding(
              padding: const EdgeInsets.all(14),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Welcome, $_guestName!",
                  style: new TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
