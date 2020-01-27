import 'package:flutter/material.dart';

class Layouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Container(
        color: Colors.greenAccent,
        alignment: Alignment.center,

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Text(
              "First item",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
            ),

            new Text(
              "Second item",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),

            new Expanded(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  new Text(
                    "Thirsd item ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                  ),

                  new Text(
                    "Fourth item ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),

                  new Text(
                    "Fifth item ",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                ],
              ),
            ),

            new Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[

                const Text(
                  "ONE",
                  style: TextStyle(color: Colors.red),
                ),

                const Text(
                  "two",
                  style: TextStyle(color: Colors.yellow),
                ),
              ],
            )
          ],
        ));
  }
}
