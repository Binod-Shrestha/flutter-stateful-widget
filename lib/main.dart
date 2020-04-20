import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var myText = "Change me";
  var myCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful-Widget_Exercise"),
      ),
      body: Center(
        child: Text(
          myText,
          style: TextStyle(
              fontSize: 34.0, color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          myText = Random().nextInt(10).toString();
          setState(() {});
        },
      ),
    );
  }
}
