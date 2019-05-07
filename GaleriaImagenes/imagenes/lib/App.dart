import 'package:flutter/material.dart';
class App extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar
        (title: Row
        (
          children: <Widget>[ Icon(Icons.access_time),Text("Hola")],
        ),
        ),
        body: Text("Hola"),
      ),
    );
  }
  
}