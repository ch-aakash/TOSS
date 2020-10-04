
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  void change() {
    setState(() {
      number = Random().nextInt(2) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text('Toss'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Image.asset('images/$number.jpg'),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Text("TOSS",
                    style: TextStyle(
                      fontSize: 50,
                    ),),
                    onPressed: () {
                      change();
                    },
                  ),
                ),
                new Center(
                  child: (number==1) ? new Container(child: Text(" YOU GOT HEADS",style: TextStyle(fontSize: 30),),) : new Container(child: Text(" YOU GOT TAILS",style: TextStyle(fontSize: 30),),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
