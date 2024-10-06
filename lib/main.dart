import 'package:flutter/material.dart';
import 'Button.dart';
import 'layout.dart';
import 'Row.dart';
import 'colum.dart';
import 'Dropdown1.dart';
import 'Dropdown2.dart';
import 'popupMenuButton.dart';
import 'ListView.Builder.dart';
import 'ListView.dart';
import 'ListView.separated.dart';
import 'ListWheelScrollView.dart';
void main() {
  runApp(Statefullapp11());
}



class Statefullapp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstApp();
  }
}

class FirstApp extends State<Statefullapp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "                       قائمة الأذكار        ",
              style: TextStyle(
                fontSize: 20,
                // textAlign: TextAlign.center,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              Column(children: [
                Container(
                  width:500,
                  color: Colors.blue,
                  child: Text(
                    "العداد                      $counter ",
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (counter == 33) {
                          counter = 0;
                        } else {
                          counter++;
                        }
                      });
                    },
                    child: Text(
                      "سبحان الله",
                      style: TextStyle(
                          fontSize: 20,

                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (counter == 33) {
                          counter = 0;
                        } else {
                          counter++;
                        }
                      });
                    },
                    child: Text(
                      "استغفرالله",
                      style: TextStyle(
                        fontFamily: 'PlayCU',
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,

                      ),
                    )

                  ),



                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (counter == 33) {
                          counter = 0;
                        } else {
                          counter++;
                        }
                      });
                    },




                    child: Text(


                      "الله اكبر"
                          ""
                          "",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter = 0;
                    });

                    },

                  child: Icon(Icons.refresh_outlined),

                ),
              ]),
            ],
          ),
        ));
  }
}
