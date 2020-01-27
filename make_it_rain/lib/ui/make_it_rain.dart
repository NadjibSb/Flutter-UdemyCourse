import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {

  int _moneyCounter = 0;

  void rainMoney(){
    setState(() {
      _moneyCounter += 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make it Rain!"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: Column(
          children: <Widget>[
            new Center(
                child: Text(
              "Get Rich!",
              style: new TextStyle(
                  color: Colors.grey,
                  fontSize: 28.0,
                  fontWeight: FontWeight.w400),
            )),
            new Expanded(
              child: new Center(
                child: new Text("\$ $_moneyCounter",
                    style: new TextStyle(
                        color: _moneyCounter>1000 ? Colors.red: Colors.greenAccent,
                        fontSize: 40.0,
                        fontWeight: FontWeight.w800)),
              ),
            ),
            new Expanded(
                child: new Center(
                  child: new FlatButton(
                    color: Colors.lightGreen,
                    textColor: Colors.white70,
                    onPressed: rainMoney,
                    child: new Text("Let it Rain!",
                        style: new TextStyle(fontSize: 18.0))),
              ))
          ],
        ),
      ),
    );
  }
}
