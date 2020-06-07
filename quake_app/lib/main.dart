import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

void main() async {
  Map _data = await getJson();
  List _quakes = _data["features"];

  runApp(new MaterialApp(
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("Earth Quakes"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: new Center(
          child: new ListView.builder(
              itemCount: _quakes.length,
              itemBuilder: (BuildContext context, int position) {
                Map _quake = _quakes[position]["properties"];
                _quake["time"] = new DateFormat("MMMM dd, HH:MM").format(
                    new DateTime.fromMicrosecondsSinceEpoch(_quake["time"]));
                return new ListTile(
                  contentPadding: EdgeInsets.all(12.0),
                  title: new Text(
                    "${_quake["place"]}",
                    style: new TextStyle(fontSize: 18.5),
                  ),
                  subtitle: new Text(
                    "Time: ${_quake["time"]}",
                    style: new TextStyle(
                        fontSize: 13.5,
                        fontStyle: FontStyle.italic,
                        color: Colors.grey),
                  ),
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[500],
                    child: new Text("${_quake["mag"]}", style: new TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white),),
                  ),
                  onTap: ()=> _showAlertMsg(context,_quake["place"],"Time : ${_quake["time"]} \nMagnitude : ${_quake["mag"]}"),
                );
              })),
    ),
  ));
}

void _showAlertMsg(BuildContext context, String title, String message) {
  showDialog(context: context, builder: (BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(18.0),
      title: new Text(title),
      content: new Text(message),
      actions: <Widget>[
        new FlatButton(
            onPressed: () => Navigator.pop(context), child: new Text("OK"))
      ],
    );
  });
}

Future<Map> getJson() async {
  String url =
      "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_week.geojson";
  //String url = "https://jsonplaceholder.typicode.com/todos";

  http.Response r = await http.get(url);
  return json.decode(r.body);
}
