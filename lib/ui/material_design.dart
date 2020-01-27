import 'package:flutter/material.dart';

class MaterialDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        backgroundColor: Colors.amberAccent,
        title: new Text("Material Design"),
        actions: <Widget>[

          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: () => debugPrint("search")),

          new IconButton(icon: new Icon(Icons.share), onPressed: _onShare)
        ],
      ),

      backgroundColor: Colors.grey.shade100,
      body: new Container(
          alignment: Alignment.center,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Text(
                "Scaffold Body",
                style: new TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.redAccent),
              ),

              new InkWell(
                child: new Text(
                  "To be pressed",
                  style: new TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.blueGrey),
                ),
                onTap: () => debugPrint("Button pressed !!"),
              )
            ],
          )),

      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.add), title: new Text("Add")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text("Home")),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.account_circle), title: new Text("Profile"))
        ],
        onTap: (int index) => debugPrint("Tab pressed index : $index"),
      ),

      floatingActionButton: new FloatingActionButton(
        onPressed: () => debugPrint("Float button pressed !!"),
        backgroundColor: Colors.amberAccent,
        tooltip: "Camera",
        child: new Icon(Icons.camera_alt),
      ),
    );
  }

  void _onShare() => debugPrint("share");
}
