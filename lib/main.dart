import 'dart:html';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> restaurants = ['McDonalds', 'Panda Express', 'Olive Garden and Their Breadsticks', 'Roscoes', 'BK', 'Wendy\'s'];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('What do you want to eat?'),
        if(currentIndex != null)
        Text(restaurants[currentIndex],
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
            Padding(padding: EdgeInsets.only(top:50),),
        FlatButton(onPressed: (){ updateIndex();},
        child: Text('Pick restaurant'),
        color: Colors.purple,
        textColor: Colors.white,)
      ],
    ))),
    );
  }

  void updateIndex(){
    final random = Random();
    final index = random.nextInt(restaurants.length);
    setState((){
      currentIndex = index;
    });
  }
}
