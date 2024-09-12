import 'dart:io';

import 'package:flutter/material.dart';
import 'main.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Text Widget Example",
              style: TextStyle(
                  fontFamily: "PlayCU",
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
            backgroundColor: Colors.green.shade400,
          ),
          body: Align(

            alignment: Alignment.centerLeft,

            child: Text(
              "Hello world!\nThis is a Text   \nWidget.   ",

              textDirection: TextDirection.ltr,
              textHeightBehavior: TextHeightBehavior(
                  applyHeightToFirstAscent: false,
                  applyHeightToLastDescent: false),

              style: TextStyle(
                fontSize: 30,
                color: Colors.deepPurpleAccent.shade700,

                  letterSpacing: 6,
                wordSpacing: 20,
                fontWeight: FontWeight.values[5],
                fontStyle: FontStyle.italic,
                backgroundColor: Colors.amber[300],
            shadows:[
              Shadow(color:Colors.deepPurpleAccent,offset: Offset(10,2),blurRadius:20 )
            ]
              ),
            ),
          )),
    );
  } //
}
