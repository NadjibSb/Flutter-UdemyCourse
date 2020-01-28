import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  final TextEditingController _weightCntrl = TextEditingController();
  int radioValue = 0;
  double _result = 0.0;
  String _formatedText = "";

  void hadleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;
      switch (value) {
        case 0:
          _result = _calculateWeight(_weightCntrl.text, 0.06);
          _formatedText =
              "Your weight on Pluto : ${_result.toStringAsFixed(1)}";
          break;
        case 1:
          _result = _calculateWeight(_weightCntrl.text, 0.38);
          _formatedText = "Your weight on Mars : ${_result.toStringAsFixed(1)}";
          break;
        case 2:
          _result = _calculateWeight(_weightCntrl.text, 0.91);
          _formatedText =
              "Your weight on Venus : ${_result.toStringAsFixed(1)}";
          break;
      }
    });
  }

  double _calculateWeight(String value, double coef) {
    if (value.isNotEmpty && int.parse(value) > 0.0) {
      return int.parse(value) * coef;
    }
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Weight  on Planet X"),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      backgroundColor: Colors.white70,
      body: new Container(
        alignment: Alignment.topCenter,
        child: new ListView(
          padding: const EdgeInsets.all(32),
          children: <Widget>[
            new Image.asset(
              "images/planet.png",
              width: 200,
              height: 133,
            ),
            new Container(
              margin: const EdgeInsets.all(2.5),
              alignment: Alignment.center,
              child: new Column(
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.all(18.0),
                  ),
                  new TextField(
                    controller: _weightCntrl,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        labelText: "Your weight on Earth",
                        hintText: "in Kgs",
                        icon: new Icon(Icons.person_outline)),
                  ),
                  new Padding(
                    padding: new EdgeInsets.all(5.0),
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Radio<int>(
                        value: 0,
                        activeColor: Colors.brown,
                        groupValue: radioValue,
                        onChanged: hadleRadioValueChanged,
                      ),
                      new Text(
                        "Pluto",
                        style: new TextStyle(color: Colors.white),
                      ),
                      new Radio<int>(
                        value: 1,
                        activeColor: Colors.redAccent,
                        groupValue: radioValue,
                        onChanged: hadleRadioValueChanged,
                      ),
                      new Text(
                        "Mars",
                        style: new TextStyle(color: Colors.white),
                      ),
                      new Radio<int>(
                        value: 2,
                        activeColor: Colors.orangeAccent,
                        groupValue: radioValue,
                        onChanged: hadleRadioValueChanged,
                      ),
                      new Text(
                        "Venus",
                        style: new TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(2.5),
                  ),
                  new Text(
                    _weightCntrl.text.isEmpty
                        ? "Please enter your weight!"
                        : _formatedText + " Kgs",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
