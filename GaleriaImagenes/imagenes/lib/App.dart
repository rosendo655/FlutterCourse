import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: appBar(),
        body: Text("Hola"),
      ),
    );
  }
}


Widget appBar(){
  return AppBar (
    title:Row
    (children: 
      [
      Icon(Icons.adjust),
      Text("Imagenes"),
      ],
    ),
  );
}
